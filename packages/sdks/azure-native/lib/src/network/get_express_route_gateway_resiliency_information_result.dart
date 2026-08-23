// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resiliency_recommendation_components_response.dart';

/// Result data returned by getExpressRouteGatewayResiliencyInformation.
class GetExpressRouteGatewayResiliencyInformationResult {
  /// List of Resiliency based Recommendation Components for the gateway
  final List<ResiliencyRecommendationComponentsResponse>? components;
  /// Timestamp denoting the last time when the resiliency score was computed for the gateway
  final String? lastComputedTime;
  /// Maximum increase expected in the score if all of the recommendations are applied for the gateway
  final String? maxScoreFromRecommendations;
  /// Minimum increase expected in the score if the at least one of the recommendations is applied for the gateway
  final String? minScoreFromRecommendations;
  /// Timestamp denoting the next eligible time to re-compute the resiliency score for the gateway
  final String? nextEligibleComputeTime;
  /// Current Resiliency Score for the gateway
  final String? overallScore;
  /// Update in the Resiliency Score for the gateway from the last computed score
  final String? scoreChange;

  /// Creates a new [GetExpressRouteGatewayResiliencyInformationResult].
  /// [components] List of Resiliency based Recommendation Components for the gateway
  /// [lastComputedTime] Timestamp denoting the last time when the resiliency score was computed for the gateway
  /// [maxScoreFromRecommendations] Maximum increase expected in the score if all of the recommendations are applied for the gateway
  /// [minScoreFromRecommendations] Minimum increase expected in the score if the at least one of the recommendations is applied for the gateway
  /// [nextEligibleComputeTime] Timestamp denoting the next eligible time to re-compute the resiliency score for the gateway
  /// [overallScore] Current Resiliency Score for the gateway
  /// [scoreChange] Update in the Resiliency Score for the gateway from the last computed score
  const GetExpressRouteGatewayResiliencyInformationResult({
    this.components,
    this.lastComputedTime,
    this.maxScoreFromRecommendations,
    this.minScoreFromRecommendations,
    this.nextEligibleComputeTime,
    this.overallScore,
    this.scoreChange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'components': ?(() { final guardedValue = components; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResiliencyRecommendationComponentsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'lastComputedTime': ?lastComputedTime,
      'maxScoreFromRecommendations': ?maxScoreFromRecommendations,
      'minScoreFromRecommendations': ?minScoreFromRecommendations,
      'nextEligibleComputeTime': ?nextEligibleComputeTime,
      'overallScore': ?overallScore,
      'scoreChange': ?scoreChange,
    };
  }

  factory GetExpressRouteGatewayResiliencyInformationResult.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteGatewayResiliencyInformationResult(
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResiliencyRecommendationComponentsResponse>(guardedValue, (value) => ResiliencyRecommendationComponentsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      lastComputedTime: (() { final guardedValue = map['lastComputedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxScoreFromRecommendations: (() { final guardedValue = map['maxScoreFromRecommendations']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minScoreFromRecommendations: (() { final guardedValue = map['minScoreFromRecommendations']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nextEligibleComputeTime: (() { final guardedValue = map['nextEligibleComputeTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      overallScore: (() { final guardedValue = map['overallScore']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scoreChange: (() { final guardedValue = map['scoreChange']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
