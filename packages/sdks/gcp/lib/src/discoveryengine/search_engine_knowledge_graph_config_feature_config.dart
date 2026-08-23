// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SearchEngineKnowledgeGraphConfigFeatureConfig {
  /// Whether to disable the private KG auto complete for the engine.
  final pulumi.Input<bool>? disablePrivateKgAutoComplete;
  /// Whether to disable the private KG enrichment for the engine.
  final pulumi.Input<bool>? disablePrivateKgEnrichment;
  /// Whether to disable the private KG for query UI chips.
  final pulumi.Input<bool>? disablePrivateKgQueryUiChips;
  /// Whether to disable the private KG query understanding for the engine.
  final pulumi.Input<bool>? disablePrivateKgQueryUnderstanding;

  /// Creates a new [SearchEngineKnowledgeGraphConfigFeatureConfig].
  /// [disablePrivateKgAutoComplete] Whether to disable the private KG auto complete for the engine.
  /// [disablePrivateKgEnrichment] Whether to disable the private KG enrichment for the engine.
  /// [disablePrivateKgQueryUiChips] Whether to disable the private KG for query UI chips.
  /// [disablePrivateKgQueryUnderstanding] Whether to disable the private KG query understanding for the engine.
  const SearchEngineKnowledgeGraphConfigFeatureConfig({
    this.disablePrivateKgAutoComplete,
    this.disablePrivateKgEnrichment,
    this.disablePrivateKgQueryUiChips,
    this.disablePrivateKgQueryUnderstanding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disablePrivateKgAutoComplete': ?disablePrivateKgAutoComplete,
      'disablePrivateKgEnrichment': ?disablePrivateKgEnrichment,
      'disablePrivateKgQueryUiChips': ?disablePrivateKgQueryUiChips,
      'disablePrivateKgQueryUnderstanding': ?disablePrivateKgQueryUnderstanding,
    };
  }

  factory SearchEngineKnowledgeGraphConfigFeatureConfig.fromMap(Map<String, dynamic> map) {
    return SearchEngineKnowledgeGraphConfigFeatureConfig(
      disablePrivateKgAutoComplete: (() { final guardedValue = map['disablePrivateKgAutoComplete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disablePrivateKgEnrichment: (() { final guardedValue = map['disablePrivateKgEnrichment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disablePrivateKgQueryUiChips: (() { final guardedValue = map['disablePrivateKgQueryUiChips']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disablePrivateKgQueryUnderstanding: (() { final guardedValue = map['disablePrivateKgQueryUnderstanding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
