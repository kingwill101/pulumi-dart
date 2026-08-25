// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_build_source_repo_source.dart';
import 'trigger_build_source_storage_source.dart';

class TriggerBuildSource {
  /// Location of the source in a Google Cloud Source Repository.
  /// Structure is documented below.
  final pulumi.Input<TriggerBuildSourceRepoSource?>? repoSource;
  /// Location of the source in an archive file in Google Cloud Storage.
  /// Structure is documented below.
  final pulumi.Input<TriggerBuildSourceStorageSource?>? storageSource;

  /// Creates a new [TriggerBuildSource].
  /// [repoSource] Location of the source in a Google Cloud Source Repository.
  /// [storageSource] Location of the source in an archive file in Google Cloud Storage.
  const TriggerBuildSource({
    this.repoSource,
    this.storageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repoSource': ?pulumi.Input.mapOptionalInputValue<TriggerBuildSourceRepoSource, Map<String, dynamic>>(repoSource, (value) => value.toMap()),
      'storageSource': ?pulumi.Input.mapOptionalInputValue<TriggerBuildSourceStorageSource, Map<String, dynamic>>(storageSource, (value) => value.toMap()),
    };
  }

  factory TriggerBuildSource.fromMap(Map<String, dynamic> map) {
    return TriggerBuildSource(
      repoSource: (() { final guardedValue = map['repoSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerBuildSourceRepoSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageSource: (() { final guardedValue = map['storageSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerBuildSourceStorageSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
