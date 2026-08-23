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
  const SourceCloudfunctionsV2beta({
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
      gitUri: (() { final guardedValue = map['gitUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoSource: (() { final guardedValue = map['repoSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepoSourceCloudfunctionsV2beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageSource: (() { final guardedValue = map['storageSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageSourceCloudfunctionsV2beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
