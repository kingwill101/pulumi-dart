// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repo_source_response_cloudfunctions_v2beta.dart';
import 'storage_source_response_cloudfunctions_v2beta.dart';

/// Provenance of the source. Ways to find the original source, or verify that some source was used for this build.
class SourceProvenanceResponseCloudfunctionsV2beta {
  /// A copy of the build's `source.git_uri`, if exists, with any commits resolved.
  final pulumi.Input<String> gitUri;

  /// A copy of the build's `source.repo_source`, if exists, with any revisions resolved.
  final pulumi.Input<RepoSourceResponseCloudfunctionsV2beta> resolvedRepoSource;

  /// A copy of the build's `source.storage_source`, if exists, with any generations resolved.
  final pulumi.Input<StorageSourceResponseCloudfunctionsV2beta>
  resolvedStorageSource;

  /// Creates a new [SourceProvenanceResponseCloudfunctionsV2beta].
  /// [gitUri] A copy of the build's `source.git_uri`, if exists, with any commits resolved.
  /// [resolvedRepoSource] A copy of the build's `source.repo_source`, if exists, with any revisions resolved.
  /// [resolvedStorageSource] A copy of the build's `source.storage_source`, if exists, with any generations resolved.
  SourceProvenanceResponseCloudfunctionsV2beta({
    required this.gitUri,
    required this.resolvedRepoSource,
    required this.resolvedStorageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitUri': gitUri,
      'resolvedRepoSource':
          pulumi.Input.mapInputValue<
            RepoSourceResponseCloudfunctionsV2beta,
            Map<String, dynamic>
          >(resolvedRepoSource, (value) => value.toMap()),
      'resolvedStorageSource':
          pulumi.Input.mapInputValue<
            StorageSourceResponseCloudfunctionsV2beta,
            Map<String, dynamic>
          >(resolvedStorageSource, (value) => value.toMap()),
    };
  }

  factory SourceProvenanceResponseCloudfunctionsV2beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return SourceProvenanceResponseCloudfunctionsV2beta(
      gitUri: pulumi.Input.fromValue(map['gitUri'] as String),
      resolvedRepoSource: pulumi.Input.fromValue(
        RepoSourceResponseCloudfunctionsV2beta.fromMap(
          (map['resolvedRepoSource']! as Map).cast<String, dynamic>(),
        ),
      ),
      resolvedStorageSource: pulumi.Input.fromValue(
        StorageSourceResponseCloudfunctionsV2beta.fromMap(
          (map['resolvedStorageSource']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
