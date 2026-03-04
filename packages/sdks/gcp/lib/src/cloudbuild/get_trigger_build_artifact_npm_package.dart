// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerBuildArtifactNpmPackage {
  /// Path to the package.json. e.g. workspace/path/to/package
  final pulumi.Input<String> packagePath;

  /// Artifact Registry repository, in the form "https://$REGION-npm.pkg.dev/$PROJECT/$REPOSITORY"
  ///
  /// Npm package in the workspace specified by path will be zipped and uploaded to Artifact Registry with this location as a prefix.
  final pulumi.Input<String> repository;

  /// Creates a new [GetTriggerBuildArtifactNpmPackage].
  /// [packagePath] Path to the package.json. e.g. workspace/path/to/package
  /// [repository] Artifact Registry repository, in the form "https://$REGION-npm.pkg.dev/$PROJECT/$REPOSITORY"
  GetTriggerBuildArtifactNpmPackage({
    required this.packagePath,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packagePath': packagePath,
      'repository': repository,
    };
  }

  factory GetTriggerBuildArtifactNpmPackage.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildArtifactNpmPackage(
      packagePath: pulumi.Input.fromValue(map['packagePath'] as String),
      repository: pulumi.Input.fromValue(map['repository'] as String),
    );
  }
}
