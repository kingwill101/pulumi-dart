// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repo_source_response_cloudfunctions_v2alpha.dart';
import 'storage_source_response_cloudfunctions_v2alpha.dart';

/// Provenance of the source. Ways to find the original source, or verify that some source was used for this build.
class SourceProvenanceResponseCloudfunctionsV2alpha {
  /// A copy of the build's `source.git_uri`, if exists, with any commits resolved.
  final pulumi.Input<String> gitUri;
  /// A copy of the build's `source.repo_source`, if exists, with any revisions resolved.
  final pulumi.Input<RepoSourceResponseCloudfunctionsV2alpha> resolvedRepoSource;
  /// A copy of the build's `source.storage_source`, if exists, with any generations resolved.
  final pulumi.Input<StorageSourceResponseCloudfunctionsV2alpha> resolvedStorageSource;

  /// Creates a new [SourceProvenanceResponseCloudfunctionsV2alpha].
  /// [gitUri] A copy of the build's `source.git_uri`, if exists, with any commits resolved.
  /// [resolvedRepoSource] A copy of the build's `source.repo_source`, if exists, with any revisions resolved.
  /// [resolvedStorageSource] A copy of the build's `source.storage_source`, if exists, with any generations resolved.
  SourceProvenanceResponseCloudfunctionsV2alpha({
    required this.gitUri,
    required this.resolvedRepoSource,
    required this.resolvedStorageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitUri': gitUri,
      'resolvedRepoSource': pulumi.Input.mapInputValue<RepoSourceResponseCloudfunctionsV2alpha, Map<String, dynamic>>(resolvedRepoSource, (value) => value.toMap()),
      'resolvedStorageSource': pulumi.Input.mapInputValue<StorageSourceResponseCloudfunctionsV2alpha, Map<String, dynamic>>(resolvedStorageSource, (value) => value.toMap()),
    };
  }

  factory SourceProvenanceResponseCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return SourceProvenanceResponseCloudfunctionsV2alpha(
      gitUri: pulumi.Input.fromValue(map['gitUri'] as String),
      resolvedRepoSource: pulumi.Input.fromValue(RepoSourceResponseCloudfunctionsV2alpha.fromMap((map['resolvedRepoSource']! as Map).cast<String, dynamic>())),
      resolvedStorageSource: pulumi.Input.fromValue(StorageSourceResponseCloudfunctionsV2alpha.fromMap((map['resolvedStorageSource']! as Map).cast<String, dynamic>())),
    );
  }
}

