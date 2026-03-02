// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repo_source_cloudfunctions_v2alpha.dart';
import 'storage_source_cloudfunctions_v2alpha.dart';

/// The location of the function source code.
class SourceCloudfunctionsV2alpha {
  /// If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  final pulumi.Input<String>? gitUri;
  /// If provided, get the source from this location in a Cloud Source Repository.
  final pulumi.Input<RepoSourceCloudfunctionsV2alpha>? repoSource;
  /// If provided, get the source from this location in Google Cloud Storage.
  final pulumi.Input<StorageSourceCloudfunctionsV2alpha>? storageSource;

  /// Creates a new [SourceCloudfunctionsV2alpha].
  /// [gitUri] If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  /// [repoSource] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSource] If provided, get the source from this location in Google Cloud Storage.
  SourceCloudfunctionsV2alpha({
    this.gitUri,
    this.repoSource,
    this.storageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitUri': ?gitUri,
      'repoSource': ?pulumi.Input.mapOptionalInputValue<RepoSourceCloudfunctionsV2alpha, Map<String, dynamic>>(repoSource, (value) => value.toMap()),
      'storageSource': ?pulumi.Input.mapOptionalInputValue<StorageSourceCloudfunctionsV2alpha, Map<String, dynamic>>(storageSource, (value) => value.toMap()),
    };
  }

  factory SourceCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return SourceCloudfunctionsV2alpha(
      gitUri: map['gitUri'] == null ? null : (map['gitUri'] as String).input(),
      repoSource: map['repoSource'] == null ? null : (RepoSourceCloudfunctionsV2alpha.fromMap((map['repoSource'] as Map).cast<String, dynamic>())).input(),
      storageSource: map['storageSource'] == null ? null : (StorageSourceCloudfunctionsV2alpha.fromMap((map['storageSource'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

