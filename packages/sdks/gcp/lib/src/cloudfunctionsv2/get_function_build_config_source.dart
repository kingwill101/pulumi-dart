// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_build_config_source_repo_source.dart';
import 'get_function_build_config_source_storage_source.dart';

class GetFunctionBuildConfigSource {
  /// If provided, get the source from this location in a Cloud Source Repository.
  final pulumi.Input<List<GetFunctionBuildConfigSourceRepoSource>> repoSources;
  /// If provided, get the source from this location in Google Cloud Storage.
  final pulumi.Input<List<GetFunctionBuildConfigSourceStorageSource>> storageSources;

  /// Creates a new [GetFunctionBuildConfigSource].
  /// [repoSources] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSources] If provided, get the source from this location in Google Cloud Storage.
  const GetFunctionBuildConfigSource({
    required this.repoSources,
    required this.storageSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repoSources': pulumi.Input.mapInputValue<List<GetFunctionBuildConfigSourceRepoSource>, List<Map<String, dynamic>>>(repoSources, (value) => pulumi.Input.encodeList<GetFunctionBuildConfigSourceRepoSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageSources': pulumi.Input.mapInputValue<List<GetFunctionBuildConfigSourceStorageSource>, List<Map<String, dynamic>>>(storageSources, (value) => pulumi.Input.encodeList<GetFunctionBuildConfigSourceStorageSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFunctionBuildConfigSource.fromMap(Map<String, dynamic> map) {
    return GetFunctionBuildConfigSource(
      repoSources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFunctionBuildConfigSourceRepoSource>(map['repoSources']!, (value) => GetFunctionBuildConfigSourceRepoSource.fromMap((value as Map).cast<String, dynamic>()))),
      storageSources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFunctionBuildConfigSourceStorageSource>(map['storageSources']!, (value) => GetFunctionBuildConfigSourceStorageSource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
