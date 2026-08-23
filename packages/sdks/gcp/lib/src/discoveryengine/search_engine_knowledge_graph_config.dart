// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_engine_knowledge_graph_config_feature_config.dart';

class SearchEngineKnowledgeGraphConfig {
  /// Specify entity types to support.
  final pulumi.Input<List<String>>? cloudKnowledgeGraphTypes;
  /// Whether to enable the Cloud Knowledge Graph for the engine.
  final pulumi.Input<bool>? enableCloudKnowledgeGraph;
  /// Whether to enable the Private Knowledge Graph for the engine.
  final pulumi.Input<bool>? enablePrivateKnowledgeGraph;
  /// Feature config for the Knowledge Graph.
  /// Structure is documented below.
  final pulumi.Input<SearchEngineKnowledgeGraphConfigFeatureConfig>? featureConfig;

  /// Creates a new [SearchEngineKnowledgeGraphConfig].
  /// [cloudKnowledgeGraphTypes] Specify entity types to support.
  /// [enableCloudKnowledgeGraph] Whether to enable the Cloud Knowledge Graph for the engine.
  /// [enablePrivateKnowledgeGraph] Whether to enable the Private Knowledge Graph for the engine.
  /// [featureConfig] Feature config for the Knowledge Graph.
  const SearchEngineKnowledgeGraphConfig({
    this.cloudKnowledgeGraphTypes,
    this.enableCloudKnowledgeGraph,
    this.enablePrivateKnowledgeGraph,
    this.featureConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudKnowledgeGraphTypes': ?cloudKnowledgeGraphTypes,
      'enableCloudKnowledgeGraph': ?enableCloudKnowledgeGraph,
      'enablePrivateKnowledgeGraph': ?enablePrivateKnowledgeGraph,
      'featureConfig': ?pulumi.Input.mapOptionalInputValue<SearchEngineKnowledgeGraphConfigFeatureConfig, Map<String, dynamic>>(featureConfig, (value) => value.toMap()),
    };
  }

  factory SearchEngineKnowledgeGraphConfig.fromMap(Map<String, dynamic> map) {
    return SearchEngineKnowledgeGraphConfig(
      cloudKnowledgeGraphTypes: (() { final guardedValue = map['cloudKnowledgeGraphTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableCloudKnowledgeGraph: (() { final guardedValue = map['enableCloudKnowledgeGraph']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrivateKnowledgeGraph: (() { final guardedValue = map['enablePrivateKnowledgeGraph']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      featureConfig: (() { final guardedValue = map['featureConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SearchEngineKnowledgeGraphConfigFeatureConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
