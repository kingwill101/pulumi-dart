// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_data_store_tool_boost_spec.dart';
import 'tool_data_store_tool_data_store_source.dart';
import 'tool_data_store_tool_engine_source.dart';
import 'tool_data_store_tool_modality_config.dart';

class ToolDataStoreTool {
  /// Boost specification to boost certain documents.
  /// Structure is documented below.
  final pulumi.Input<List<ToolDataStoreToolBoostSpec>>? boostSpecs;
  /// Optional. Search within a single specific DataStore.
  /// Structure is documented below.
  final pulumi.Input<ToolDataStoreToolDataStoreSource>? dataStoreSource;
  /// The tool description.
  final pulumi.Input<String>? description;
  /// Configuration for searching within an Engine, potentially targeting
  /// specific DataStores.
  /// Structure is documented below.
  final pulumi.Input<ToolDataStoreToolEngineSource>? engineSource;
  /// Optional. The filter parameter behavior.
  /// Possible values:
  /// FILTER_PARAMETER_BEHAVIOR_UNSPECIFIED
  /// ALWAYS_INCLUDE
  /// NEVER_INCLUDE
  /// Possible values are: `FILTER_PARAMETER_BEHAVIOR_UNSPECIFIED`, `ALWAYS_INCLUDE`, `NEVER_INCLUDE`.
  final pulumi.Input<String>? filterParameterBehavior;
  /// (Optional, Deprecated)
  /// Number of search results to return per query.
  /// The default value is 10. The maximum allowed value is 10.
  ///
  /// &gt; **Warning:** `maxResults` is deprecated and will be removed in a future release.
  final pulumi.Input<int>? maxResults;
  /// The modality configs for the data store.
  /// Structure is documented below.
  final pulumi.Input<List<ToolDataStoreToolModalityConfig>>? modalityConfigs;
  /// The data store tool name.
  final pulumi.Input<String> name;

  /// Creates a new [ToolDataStoreTool].
  /// [boostSpecs] Boost specification to boost certain documents.
  /// [dataStoreSource] Optional. Search within a single specific DataStore.
  /// [description] The tool description.
  /// [engineSource] Configuration for searching within an Engine, potentially targeting
  /// [filterParameterBehavior] Optional. The filter parameter behavior.
  /// [maxResults] (Optional, Deprecated)
  /// [modalityConfigs] The modality configs for the data store.
  /// [name] The data store tool name.
  const ToolDataStoreTool({
    this.boostSpecs,
    this.dataStoreSource,
    this.description,
    this.engineSource,
    this.filterParameterBehavior,
    this.maxResults,
    this.modalityConfigs,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boostSpecs': ?pulumi.Input.mapOptionalInputValue<List<ToolDataStoreToolBoostSpec>, List<Map<String, dynamic>>>(boostSpecs, (value) => pulumi.Input.encodeList<ToolDataStoreToolBoostSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataStoreSource': ?pulumi.Input.mapOptionalInputValue<ToolDataStoreToolDataStoreSource, Map<String, dynamic>>(dataStoreSource, (value) => value.toMap()),
      'description': ?description,
      'engineSource': ?pulumi.Input.mapOptionalInputValue<ToolDataStoreToolEngineSource, Map<String, dynamic>>(engineSource, (value) => value.toMap()),
      'filterParameterBehavior': ?filterParameterBehavior,
      'maxResults': ?maxResults,
      'modalityConfigs': ?pulumi.Input.mapOptionalInputValue<List<ToolDataStoreToolModalityConfig>, List<Map<String, dynamic>>>(modalityConfigs, (value) => pulumi.Input.encodeList<ToolDataStoreToolModalityConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory ToolDataStoreTool.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreTool(
      boostSpecs: (() { final guardedValue = map['boostSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolDataStoreToolBoostSpec>(guardedValue, (value) => ToolDataStoreToolBoostSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataStoreSource: (() { final guardedValue = map['dataStoreSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolDataStoreToolDataStoreSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineSource: (() { final guardedValue = map['engineSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolDataStoreToolEngineSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filterParameterBehavior: (() { final guardedValue = map['filterParameterBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxResults: (() { final guardedValue = map['maxResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      modalityConfigs: (() { final guardedValue = map['modalityConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolDataStoreToolModalityConfig>(guardedValue, (value) => ToolDataStoreToolModalityConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
