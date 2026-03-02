// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecommendationEngineCommonConfig {
  /// The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.cd
  final pulumi.Input<String>? companyName;

  /// Creates a new [RecommendationEngineCommonConfig].
  /// [companyName] The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.cd
  RecommendationEngineCommonConfig({
    this.companyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'companyName': ?companyName,
    };
  }

  factory RecommendationEngineCommonConfig.fromMap(Map<String, dynamic> map) {
    return RecommendationEngineCommonConfig(
      companyName: map['companyName'] == null ? null : (map['companyName'] as String).input(),
    );
  }
}

