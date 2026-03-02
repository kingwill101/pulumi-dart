// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_engine_source_data_store_source.dart';

class AppVersionSnapshotToolDataStoreToolEngineSource {
  /// (Output)
  /// Use to target specific DataStores within the Engine.
  /// If empty, the search applies to all DataStores associated with the
  /// Engine.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource>>? dataStoreSources;
  /// (Output)
  /// Full resource name of the Engine.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}`
  final pulumi.Input<String>? engine;
  /// (Output)
  /// Filter specification for the DataStore.
  /// See:
  /// https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata
  final pulumi.Input<String>? filter;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolEngineSource].
  /// [dataStoreSources] (Output)
  /// [engine] (Output)
  /// [filter] (Output)
  AppVersionSnapshotToolDataStoreToolEngineSource({
    this.dataStoreSources,
    this.engine,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreSources': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource>, List<Map<String, dynamic>>>(dataStoreSources, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'engine': ?engine,
      'filter': ?filter,
    };
  }

  factory AppVersionSnapshotToolDataStoreToolEngineSource.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolEngineSource(
      dataStoreSources: map['dataStoreSources'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource>(map['dataStoreSources']!, (value) => AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      engine: map['engine'] == null ? null : (map['engine']! as String).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
    );
  }
}

