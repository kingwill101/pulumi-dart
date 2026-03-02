// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_engine_source_data_store_source_data_store.dart';

class AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource {
  /// (Output)
  /// A DataStore resource in Vertex AI Search.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore>>? dataStores;
  /// (Output)
  /// Filter specification for the DataStore.
  /// See:
  /// https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata
  final pulumi.Input<String>? filter;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource].
  /// [dataStores] (Output)
  /// [filter] (Output)
  AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource({
    this.dataStores,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStores': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore>, List<Map<String, dynamic>>>(dataStores, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?filter,
    };
  }

  factory AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource(
      dataStores: map['dataStores'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore>(map['dataStores']!, (value) => AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore.fromMap((value as Map).cast<String, dynamic>()))).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
    );
  }
}

