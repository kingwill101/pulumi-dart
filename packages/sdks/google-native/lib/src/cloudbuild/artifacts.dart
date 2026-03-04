// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_objects.dart';
import 'maven_artifact.dart';
import 'npm_package.dart';
import 'python_package.dart';

/// Artifacts produced by a build that should be uploaded upon successful completion of all build steps.
class Artifacts {
  /// A list of images to be pushed upon the successful completion of all build steps. The images will be pushed using the builder service account's credentials. The digests of the pushed images will be stored in the Build resource's results field. If any of the images fail to be pushed, the build is marked FAILURE.
  final pulumi.Input<List<String>>? images;

  /// A list of Maven artifacts to be uploaded to Artifact Registry upon successful completion of all build steps. Artifacts in the workspace matching specified paths globs will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any artifacts fail to be pushed, the build is marked FAILURE.
  final pulumi.Input<List<MavenArtifact>>? mavenArtifacts;

  /// A list of npm packages to be uploaded to Artifact Registry upon successful completion of all build steps. Npm packages in the specified paths will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any packages fail to be pushed, the build is marked FAILURE.
  final pulumi.Input<List<NpmPackage>>? npmPackages;

  /// A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps. Files in the workspace matching specified paths globs will be uploaded to the specified Cloud Storage location using the builder service account's credentials. The location and generation of the uploaded objects will be stored in the Build resource's results field. If any objects fail to be pushed, the build is marked FAILURE.
  final pulumi.Input<ArtifactObjects>? objects;

  /// A list of Python packages to be uploaded to Artifact Registry upon successful completion of all build steps. The build service account credentials will be used to perform the upload. If any objects fail to be pushed, the build is marked FAILURE.
  final pulumi.Input<List<PythonPackage>>? pythonPackages;

  /// Creates a new [Artifacts].
  /// [images] A list of images to be pushed upon the successful completion of all build steps. The images will be pushed using the builder service account's credentials. The digests of the pushed images will be stored in the Build resource's results field. If any of the images fail to be pushed, the build is marked FAILURE.
  /// [mavenArtifacts] A list of Maven artifacts to be uploaded to Artifact Registry upon successful completion of all build steps. Artifacts in the workspace matching specified paths globs will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any artifacts fail to be pushed, the build is marked FAILURE.
  /// [npmPackages] A list of npm packages to be uploaded to Artifact Registry upon successful completion of all build steps. Npm packages in the specified paths will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any packages fail to be pushed, the build is marked FAILURE.
  /// [objects] A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps. Files in the workspace matching specified paths globs will be uploaded to the specified Cloud Storage location using the builder service account's credentials. The location and generation of the uploaded objects will be stored in the Build resource's results field. If any objects fail to be pushed, the build is marked FAILURE.
  /// [pythonPackages] A list of Python packages to be uploaded to Artifact Registry upon successful completion of all build steps. The build service account credentials will be used to perform the upload. If any objects fail to be pushed, the build is marked FAILURE.
  Artifacts({
    this.images,
    this.mavenArtifacts,
    this.npmPackages,
    this.objects,
    this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'images': ?images,
      'mavenArtifacts':
          ?pulumi.Input.mapOptionalInputValue<
            List<MavenArtifact>,
            List<Map<String, dynamic>>
          >(
            mavenArtifacts,
            (value) =>
                pulumi.Input.encodeList<MavenArtifact, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'npmPackages':
          ?pulumi.Input.mapOptionalInputValue<
            List<NpmPackage>,
            List<Map<String, dynamic>>
          >(
            npmPackages,
            (value) =>
                pulumi.Input.encodeList<NpmPackage, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'objects':
          ?pulumi.Input.mapOptionalInputValue<
            ArtifactObjects,
            Map<String, dynamic>
          >(objects, (value) => value.toMap()),
      'pythonPackages':
          ?pulumi.Input.mapOptionalInputValue<
            List<PythonPackage>,
            List<Map<String, dynamic>>
          >(
            pythonPackages,
            (value) =>
                pulumi.Input.encodeList<PythonPackage, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory Artifacts.fromMap(Map<String, dynamic> map) {
    return Artifacts(
      images: (() {
        final guardedValue = map['images'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      mavenArtifacts: (() {
        final guardedValue = map['mavenArtifacts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MavenArtifact>(
            guardedValue,
            (value) =>
                MavenArtifact.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      npmPackages: (() {
        final guardedValue = map['npmPackages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NpmPackage>(
            guardedValue,
            (value) =>
                NpmPackage.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      objects: (() {
        final guardedValue = map['objects'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ArtifactObjects.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      pythonPackages: (() {
        final guardedValue = map['pythonPackages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PythonPackage>(
            guardedValue,
            (value) =>
                PythonPackage.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
