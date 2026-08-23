// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repo_source_response_cloudfunctions_v2alpha.dart';
import 'storage_source_response_cloudfunctions_v2alpha.dart';

/// The location of the function source code.
class SourceResponseCloudfunctionsV2alpha {
  /// If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  final pulumi.Input<String> gitUri;
  /// If provided, get the source from this location in a Cloud Source Repository.
  final pulumi.Input<RepoSourceResponseCloudfunctionsV2alpha> repoSource;
  /// If provided, get the source from this location in Google Cloud Storage.
  final pulumi.Input<StorageSourceResponseCloudfunctionsV2alpha> storageSource;

  /// Creates a new [SourceResponseCloudfunctionsV2alpha].
  /// [gitUri] If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  /// [repoSource] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSource] If provided, get the source from this location in Google Cloud Storage.
  const SourceResponseCloudfunctionsV2alpha({
    required this.gitUri,
    required this.repoSource,
    required this.storageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitUri': gitUri,
      'repoSource': pulumi.Input.mapInputValue<RepoSourceResponseCloudfunctionsV2alpha, Map<String, dynamic>>(repoSource, (value) => value.toMap()),
      'storageSource': pulumi.Input.mapInputValue<StorageSourceResponseCloudfunctionsV2alpha, Map<String, dynamic>>(storageSource, (value) => value.toMap()),
    };
  }

  factory SourceResponseCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return SourceResponseCloudfunctionsV2alpha(
      gitUri: pulumi.Input.fromValue(map['gitUri'] as String),
      repoSource: pulumi.Input.fromValue(RepoSourceResponseCloudfunctionsV2alpha.fromMap((map['repoSource']! as Map).cast<String, dynamic>())),
      storageSource: pulumi.Input.fromValue(StorageSourceResponseCloudfunctionsV2alpha.fromMap((map['storageSource']! as Map).cast<String, dynamic>())),
    );
  }
}
