// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig {
  /// The time window of which the engine is queried at training and
  /// prediction time. Positive integers only. The value translates to the
  /// last X days of events. Currently required for the `most-popular-items`
  /// engine.
  final pulumi.Input<int>? timeWindowDays;

  /// Creates a new [RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig].
  /// [timeWindowDays] The time window of which the engine is queried at training and
  const RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig({
    this.timeWindowDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeWindowDays': ?timeWindowDays,
    };
  }

  factory RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig.fromMap(Map<String, dynamic> map) {
    return RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigMostPopularConfig(
      timeWindowDays: (() { final guardedValue = map['timeWindowDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
