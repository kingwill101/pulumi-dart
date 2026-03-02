// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repo_source_response.dart';
import 'storage_source_response.dart';

/// The location of the function source code.
class SourceResponse {
  /// If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  final pulumi.Input<String> gitUri;
  /// If provided, get the source from this location in a Cloud Source Repository.
  final pulumi.Input<RepoSourceResponse> repoSource;
  /// If provided, get the source from this location in Google Cloud Storage.
  final pulumi.Input<StorageSourceResponse> storageSource;

  /// Creates a new [SourceResponse].
  /// [gitUri] If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  /// [repoSource] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSource] If provided, get the source from this location in Google Cloud Storage.
  SourceResponse({
    required this.gitUri,
    required this.repoSource,
    required this.storageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitUri': gitUri,
      'repoSource': pulumi.Input.mapInputValue<RepoSourceResponse, Map<String, dynamic>>(repoSource, (value) => value.toMap()),
      'storageSource': pulumi.Input.mapInputValue<StorageSourceResponse, Map<String, dynamic>>(storageSource, (value) => value.toMap()),
    };
  }

  factory SourceResponse.fromMap(Map<String, dynamic> map) {
    return SourceResponse(
      gitUri: (map['gitUri'] as String).input(),
      repoSource: (RepoSourceResponse.fromMap((map['repoSource'] as Map).cast<String, dynamic>())).input(),
      storageSource: (StorageSourceResponse.fromMap((map['storageSource'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

