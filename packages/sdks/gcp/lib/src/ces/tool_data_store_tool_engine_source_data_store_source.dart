// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_data_store_tool_engine_source_data_store_source_data_store.dart';

class ToolDataStoreToolEngineSourceDataStoreSource {
  /// A DataStore resource in Vertex AI Search.
  /// Structure is documented below.
  final pulumi.Input<ToolDataStoreToolEngineSourceDataStoreSourceDataStore>? dataStore;
  /// Filter specification for the DataStore.
  /// See:
  /// https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata
  final pulumi.Input<String>? filter;

  /// Creates a new [ToolDataStoreToolEngineSourceDataStoreSource].
  /// [dataStore] A DataStore resource in Vertex AI Search.
  /// [filter] Filter specification for the DataStore.
  ToolDataStoreToolEngineSourceDataStoreSource({
    this.dataStore,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStore': ?pulumi.Input.mapOptionalInputValue<ToolDataStoreToolEngineSourceDataStoreSourceDataStore, Map<String, dynamic>>(dataStore, (value) => value.toMap()),
      'filter': ?filter,
    };
  }

  factory ToolDataStoreToolEngineSourceDataStoreSource.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolEngineSourceDataStoreSource(
      dataStore: (() { final guardedValue = map['dataStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolDataStoreToolEngineSourceDataStoreSourceDataStore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

