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
  const Source({
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
      gitUri: (() { final guardedValue = map['gitUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoSource: (() { final guardedValue = map['repoSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepoSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageSource: (() { final guardedValue = map['storageSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
