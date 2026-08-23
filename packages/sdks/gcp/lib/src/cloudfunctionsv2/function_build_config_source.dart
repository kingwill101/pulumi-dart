// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_build_config_source_repo_source.dart';
import 'function_build_config_source_storage_source.dart';

class FunctionBuildConfigSource {
  /// If provided, get the source from this location in a Cloud Source Repository.
  /// Structure is documented below.
  final pulumi.Input<FunctionBuildConfigSourceRepoSource>? repoSource;
  /// If provided, get the source from this location in Google Cloud Storage.
  /// Structure is documented below.
  final pulumi.Input<FunctionBuildConfigSourceStorageSource>? storageSource;

  /// Creates a new [FunctionBuildConfigSource].
  /// [repoSource] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSource] If provided, get the source from this location in Google Cloud Storage.
  const FunctionBuildConfigSource({
    this.repoSource,
    this.storageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repoSource': ?pulumi.Input.mapOptionalInputValue<FunctionBuildConfigSourceRepoSource, Map<String, dynamic>>(repoSource, (value) => value.toMap()),
      'storageSource': ?pulumi.Input.mapOptionalInputValue<FunctionBuildConfigSourceStorageSource, Map<String, dynamic>>(storageSource, (value) => value.toMap()),
    };
  }

  factory FunctionBuildConfigSource.fromMap(Map<String, dynamic> map) {
    return FunctionBuildConfigSource(
      repoSource: (() { final guardedValue = map['repoSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionBuildConfigSourceRepoSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageSource: (() { final guardedValue = map['storageSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionBuildConfigSourceStorageSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
