// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repo_source_response.dart';
import 'storage_source_response.dart';

/// Provenance of the source. Ways to find the original source, or verify that some source was used for this build.
class SourceProvenanceResponse {
  /// A copy of the build's `source.git_uri`, if exists, with any commits resolved.
  final pulumi.Input<String> gitUri;
  /// A copy of the build's `source.repo_source`, if exists, with any revisions resolved.
  final pulumi.Input<RepoSourceResponse> resolvedRepoSource;
  /// A copy of the build's `source.storage_source`, if exists, with any generations resolved.
  final pulumi.Input<StorageSourceResponse> resolvedStorageSource;

  /// Creates a new [SourceProvenanceResponse].
  /// [gitUri] A copy of the build's `source.git_uri`, if exists, with any commits resolved.
  /// [resolvedRepoSource] A copy of the build's `source.repo_source`, if exists, with any revisions resolved.
  /// [resolvedStorageSource] A copy of the build's `source.storage_source`, if exists, with any generations resolved.
  const SourceProvenanceResponse({
    required this.gitUri,
    required this.resolvedRepoSource,
    required this.resolvedStorageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitUri': gitUri,
      'resolvedRepoSource': pulumi.Input.mapInputValue<RepoSourceResponse, Map<String, dynamic>>(resolvedRepoSource, (value) => value.toMap()),
      'resolvedStorageSource': pulumi.Input.mapInputValue<StorageSourceResponse, Map<String, dynamic>>(resolvedStorageSource, (value) => value.toMap()),
    };
  }

  factory SourceProvenanceResponse.fromMap(Map<String, dynamic> map) {
    return SourceProvenanceResponse(
      gitUri: pulumi.Input.fromValue(map['gitUri'] as String),
      resolvedRepoSource: pulumi.Input.fromValue(RepoSourceResponse.fromMap((map['resolvedRepoSource']! as Map).cast<String, dynamic>())),
      resolvedStorageSource: pulumi.Input.fromValue(StorageSourceResponse.fromMap((map['resolvedStorageSource']! as Map).cast<String, dynamic>())),
    );
  }
}
