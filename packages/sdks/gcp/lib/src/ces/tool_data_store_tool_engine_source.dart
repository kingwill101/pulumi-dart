// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_data_store_tool_engine_source_data_store_source.dart';

class ToolDataStoreToolEngineSource {
  /// Use to target specific DataStores within the Engine.
  /// If empty, the search applies to all DataStores associated with the
  /// Engine.
  /// Structure is documented below.
  final List<ToolDataStoreToolEngineSourceDataStoreSource>? dataStoreSources;
  /// Full resource name of the Engine.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}`
  final String engine;
  /// A filter applied to the search across the Engine. Not relevant and not
  /// used if 'data_store_sources' is provided.
  /// See:
  /// https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata
  final String? filter;

  /// Creates a new [ToolDataStoreToolEngineSource].
  /// [dataStoreSources] Use to target specific DataStores within the Engine.
  /// [engine] Full resource name of the Engine.
  /// [filter] A filter applied to the search across the Engine. Not relevant and not
  ToolDataStoreToolEngineSource({
    this.dataStoreSources,
    required this.engine,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreSources': ?dataStoreSources == null ? null : pulumi.Input.encodeList<ToolDataStoreToolEngineSourceDataStoreSource, Map<String, dynamic>>(dataStoreSources!, (value) => value.toMap()),
      'engine': engine,
      'filter': ?filter,
    };
  }

  factory ToolDataStoreToolEngineSource.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolEngineSource(
      dataStoreSources: map['dataStoreSources'] == null ? null : pulumi.Input.decodeList<ToolDataStoreToolEngineSourceDataStoreSource>(map['dataStoreSources'], (value) => ToolDataStoreToolEngineSourceDataStoreSource.fromMap((value as Map).cast<String, dynamic>())),
      engine: map['engine'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
    );
  }
}

