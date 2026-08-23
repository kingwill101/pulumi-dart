// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_resiliency_recommendation_response.dart';

/// Gateway Resiliency based Recommendations
class ResiliencyRecommendationComponentsResponse {
  /// Current Score of the gateway
  final pulumi.Input<String>? currentScore;
  /// Max score that the gateway can achieve if the specified recommendation is applied
  final pulumi.Input<String>? maxScore;
  /// Name of the Resiliency based Recommendation Component
  final pulumi.Input<String>? name;
  /// List of Gateway Resiliency based Recommendations
  final pulumi.Input<List<GatewayResiliencyRecommendationResponse>>? recommendations;

  /// Creates a new [ResiliencyRecommendationComponentsResponse].
  /// [currentScore] Current Score of the gateway
  /// [maxScore] Max score that the gateway can achieve if the specified recommendation is applied
  /// [name] Name of the Resiliency based Recommendation Component
  /// [recommendations] List of Gateway Resiliency based Recommendations
  const ResiliencyRecommendationComponentsResponse({
    this.currentScore,
    this.maxScore,
    this.name,
    this.recommendations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentScore': ?currentScore,
      'maxScore': ?maxScore,
      'name': ?name,
      'recommendations': ?pulumi.Input.mapOptionalInputValue<List<GatewayResiliencyRecommendationResponse>, List<Map<String, dynamic>>>(recommendations, (value) => pulumi.Input.encodeList<GatewayResiliencyRecommendationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResiliencyRecommendationComponentsResponse.fromMap(Map<String, dynamic> map) {
    return ResiliencyRecommendationComponentsResponse(
      currentScore: (() { final guardedValue = map['currentScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxScore: (() { final guardedValue = map['maxScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recommendations: (() { final guardedValue = map['recommendations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GatewayResiliencyRecommendationResponse>(guardedValue, (value) => GatewayResiliencyRecommendationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
