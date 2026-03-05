// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerBuildArtifactsNpmPackage {
  /// Path to the package.json. e.g. workspace/path/to/package
  final pulumi.Input<String>? packagePath;
  /// Artifact Registry repository, in the form "https://$REGION-npm.pkg.dev/$PROJECT/$REPOSITORY"
  /// Npm package in the workspace specified by path will be zipped and uploaded to Artifact Registry with this location as a prefix.
  final pulumi.Input<String>? repository;

  /// Creates a new [TriggerBuildArtifactsNpmPackage].
  /// [packagePath] Path to the package.json. e.g. workspace/path/to/package
  /// [repository] Artifact Registry repository, in the form "https://$REGION-npm.pkg.dev/$PROJECT/$REPOSITORY"
  TriggerBuildArtifactsNpmPackage({
    this.packagePath,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packagePath': ?packagePath,
      'repository': ?repository,
    };
  }

  factory TriggerBuildArtifactsNpmPackage.fromMap(Map<String, dynamic> map) {
    return TriggerBuildArtifactsNpmPackage(
      packagePath: (() { final guardedValue = map['packagePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

