// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig {
  /// The type of event with which the engine is queried at prediction time.
  /// If set to `generic`, only `view-item`, `media-play`,and
  /// `media-complete` will be used as `context-event` in engine training. If
  /// set to `view-home-page`, `view-home-page` will also be used as
  /// `context-events` in addition to `view-item`, `media-play`, and
  /// `media-complete`. Currently supported for the `recommended-for-you`
  /// engine. Currently supported values: `view-home-page`, `generic`.
  final pulumi.Input<String>? contextEventType;

  /// Creates a new [RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig].
  /// [contextEventType] The type of event with which the engine is queried at prediction time.
  RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig({
    this.contextEventType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextEventType': ?contextEventType,
    };
  }

  factory RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig.fromMap(Map<String, dynamic> map) {
    return RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfig(
      contextEventType: map['contextEventType'] == null ? null : (map['contextEventType'] as String).input(),
    );
  }
}

