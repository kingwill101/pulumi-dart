// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repo_source_cloudfunctions_v2beta.dart';
import 'storage_source_cloudfunctions_v2beta.dart';

/// The location of the function source code.
class SourceCloudfunctionsV2beta {
  /// If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  final pulumi.Input<String>? gitUri;
  /// If provided, get the source from this location in a Cloud Source Repository.
  final pulumi.Input<RepoSourceCloudfunctionsV2beta>? repoSource;
  /// If provided, get the source from this location in Google Cloud Storage.
  final pulumi.Input<StorageSourceCloudfunctionsV2beta>? storageSource;

  /// Creates a new [SourceCloudfunctionsV2beta].
  /// [gitUri] If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  /// [repoSource] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSource] If provided, get the source from this location in Google Cloud Storage.
  SourceCloudfunctionsV2beta({
    this.gitUri,
    this.repoSource,
    this.storageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitUri': ?gitUri,
      'repoSource': ?pulumi.Input.mapOptionalInputValue<RepoSourceCloudfunctionsV2beta, Map<String, dynamic>>(repoSource, (value) => value.toMap()),
      'storageSource': ?pulumi.Input.mapOptionalInputValue<StorageSourceCloudfunctionsV2beta, Map<String, dynamic>>(storageSource, (value) => value.toMap()),
    };
  }

  factory SourceCloudfunctionsV2beta.fromMap(Map<String, dynamic> map) {
    return SourceCloudfunctionsV2beta(
      gitUri: map['gitUri'] == null ? null : (map['gitUri'] as String).input(),
      repoSource: map['repoSource'] == null ? null : (RepoSourceCloudfunctionsV2beta.fromMap((map['repoSource'] as Map).cast<String, dynamic>())).input(),
      storageSource: map['storageSource'] == null ? null : (StorageSourceCloudfunctionsV2beta.fromMap((map['storageSource'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

