// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repo_source.dart';
import 'storage_source.dart';

/// The location of the function source code.
class Source {
  /// If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  final pulumi.Input<String>? gitUri;
  /// If provided, get the source from this location in a Cloud Source Repository.
  final pulumi.Input<RepoSource>? repoSource;
  /// If provided, get the source from this location in Google Cloud Storage.
  final pulumi.Input<StorageSource>? storageSource;

  /// Creates a new [Source].
  /// [gitUri] If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  /// [repoSource] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSource] If provided, get the source from this location in Google Cloud Storage.
  Source({
    this.gitUri,
    this.repoSource,
    this.storageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitUri': ?gitUri,
      'repoSource': ?pulumi.Input.mapOptionalInputValue<RepoSource, Map<String, dynamic>>(repoSource, (value) => value.toMap()),
      'storageSource': ?pulumi.Input.mapOptionalInputValue<StorageSource, Map<String, dynamic>>(storageSource, (value) => value.toMap()),
    };
  }

  factory Source.fromMap(Map<String, dynamic> map) {
    return Source(
      gitUri: map['gitUri'] == null ? null : (map['gitUri'] as String).input(),
      repoSource: map['repoSource'] == null ? null : (RepoSource.fromMap((map['repoSource'] as Map).cast<String, dynamic>())).input(),
      storageSource: map['storageSource'] == null ? null : (StorageSource.fromMap((map['storageSource'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

