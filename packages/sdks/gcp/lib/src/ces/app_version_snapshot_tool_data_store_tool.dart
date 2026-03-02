// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_boost_spec.dart';
import 'app_version_snapshot_tool_data_store_tool_engine_source.dart';
import 'app_version_snapshot_tool_data_store_tool_modality_config.dart';

class AppVersionSnapshotToolDataStoreTool {
  /// (Output)
  /// Boost specification to boost certain documents.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolBoostSpec>>? boostSpecs;
  /// The description of the app version.
  final pulumi.Input<String>? description;
  /// (Output)
  /// Configuration for searching within an Engine, potentially targeting
  /// specific DataStores.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolEngineSource>>? engineSources;
  /// (Output)
  /// Number of search results to return per query.
  /// The default value is 10. The maximum allowed value is 10.
  final pulumi.Input<int>? maxResults;
  /// (Output)
  /// The modality configs for the data store.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolModalityConfig>>? modalityConfigs;
  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;

  /// Creates a new [AppVersionSnapshotToolDataStoreTool].
  /// [boostSpecs] (Output)
  /// [description] The description of the app version.
  /// [engineSources] (Output)
  /// [maxResults] (Output)
  /// [modalityConfigs] (Output)
  /// [name] (Output)
  AppVersionSnapshotToolDataStoreTool({
    this.boostSpecs,
    this.description,
    this.engineSources,
    this.maxResults,
    this.modalityConfigs,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boostSpecs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolDataStoreToolBoostSpec>, List<Map<String, dynamic>>>(boostSpecs, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolDataStoreToolBoostSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'engineSources': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolDataStoreToolEngineSource>, List<Map<String, dynamic>>>(engineSources, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolDataStoreToolEngineSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxResults': ?maxResults,
      'modalityConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolDataStoreToolModalityConfig>, List<Map<String, dynamic>>>(modalityConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolDataStoreToolModalityConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory AppVersionSnapshotToolDataStoreTool.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreTool(
      boostSpecs: map['boostSpecs'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotToolDataStoreToolBoostSpec>(map['boostSpecs']!, (value) => AppVersionSnapshotToolDataStoreToolBoostSpec.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      engineSources: map['engineSources'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotToolDataStoreToolEngineSource>(map['engineSources']!, (value) => AppVersionSnapshotToolDataStoreToolEngineSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxResults: map['maxResults'] == null ? null : (map['maxResults']! as int).input(),
      modalityConfigs: map['modalityConfigs'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotToolDataStoreToolModalityConfig>(map['modalityConfigs']!, (value) => AppVersionSnapshotToolDataStoreToolModalityConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

