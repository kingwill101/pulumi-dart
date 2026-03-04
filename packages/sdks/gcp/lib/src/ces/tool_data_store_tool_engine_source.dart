// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_data_store_tool_engine_source_data_store_source.dart';

class ToolDataStoreToolEngineSource {
  /// Use to target specific DataStores within the Engine.
  /// If empty, the search applies to all DataStores associated with the
  /// Engine.
  /// Structure is documented below.
  final pulumi.Input<List<ToolDataStoreToolEngineSourceDataStoreSource>>?
  dataStoreSources;

  /// Full resource name of the Engine.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}`
  final pulumi.Input<String> engine;

  /// A filter applied to the search across the Engine. Not relevant and not
  /// used if 'data_store_sources' is provided.
  /// See:
  /// https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata
  final pulumi.Input<String>? filter;

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
      'dataStoreSources':
          ?pulumi.Input.mapOptionalInputValue<
            List<ToolDataStoreToolEngineSourceDataStoreSource>,
            List<Map<String, dynamic>>
          >(
            dataStoreSources,
            (value) =>
                pulumi.Input.encodeList<
                  ToolDataStoreToolEngineSourceDataStoreSource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'engine': engine,
      'filter': ?filter,
    };
  }

  factory ToolDataStoreToolEngineSource.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolEngineSource(
      dataStoreSources: (() {
        final guardedValue = map['dataStoreSources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ToolDataStoreToolEngineSourceDataStoreSource>(
            guardedValue,
            (value) => ToolDataStoreToolEngineSourceDataStoreSource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
