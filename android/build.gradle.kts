allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

// Reproducible builds for native CMake-based Flutter plugin dependencies.
// Add every Flutter plugin that compiles native .so files via CMake.
val nativeLibraryModules = setOf(
    "jni",
    // Add newly discovered plugins here
)
subprojects {
    plugins.withId("com.android.library") {
        if (name in nativeLibraryModules) {
            extensions.configure<com.android.build.api.dsl.LibraryExtension>("android") {
                defaultConfig {
                    externalNativeBuild {
                        cmake {
                            arguments += "-DCMAKE_SHARED_LINKER_FLAGS=-Wl,--build-id=none"
                            cFlags += "-ffile-prefix-map=${project.projectDir.parentFile.absolutePath}/="
                            cppFlags += "-ffile-prefix-map=${project.projectDir.parentFile.absolutePath}/="
                        }
                    }
                }
            }
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
