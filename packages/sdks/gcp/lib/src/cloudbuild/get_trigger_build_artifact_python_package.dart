// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerBuildArtifactPythonPackage {
  /// Path globs used to match files in the build's workspace. For Python/ Twine, this is usually dist/*, and sometimes additionally an .asc file.
  final pulumi.Input<List<String>> paths;
  /// Artifact Registry repository, in the form "https://$REGION-python.pkg.dev/$PROJECT/$REPOSITORY"
  ///
  /// Files in the workspace matching any path pattern will be uploaded to Artifact Registry with this location as a prefix.
  final pulumi.Input<String> repository;

  /// Creates a new [GetTriggerBuildArtifactPythonPackage].
  /// [paths] Path globs used to match files in the build's workspace. For Python/ Twine, this is usually dist/*, and sometimes additionally an .asc file.
  /// [repository] Artifact Registry repository, in the form "https://$REGION-python.pkg.dev/$PROJECT/$REPOSITORY"
  GetTriggerBuildArtifactPythonPackage({
    required this.paths,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': paths,
      'repository': repository,
    };
  }

  factory GetTriggerBuildArtifactPythonPackage.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildArtifactPythonPackage(
      paths: ((map['paths'] as List).cast<String>()).input(),
      repository: (map['repository'] as String).input(),
    );
  }
}

