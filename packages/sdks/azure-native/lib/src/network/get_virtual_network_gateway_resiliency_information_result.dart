// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resiliency_recommendation_components_response.dart';

/// Result data returned by getVirtualNetworkGatewayResiliencyInformation.
class GetVirtualNetworkGatewayResiliencyInformationResult {
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

  /// Creates a new [GetVirtualNetworkGatewayResiliencyInformationResult].
  /// [components] List of Resiliency based Recommendation Components for the gateway
  /// [lastComputedTime] Timestamp denoting the last time when the resiliency score was computed for the gateway
  /// [maxScoreFromRecommendations] Maximum increase expected in the score if all of the recommendations are applied for the gateway
  /// [minScoreFromRecommendations] Minimum increase expected in the score if the at least one of the recommendations is applied for the gateway
  /// [nextEligibleComputeTime] Timestamp denoting the next eligible time to re-compute the resiliency score for the gateway
  /// [overallScore] Current Resiliency Score for the gateway
  /// [scoreChange] Update in the Resiliency Score for the gateway from the last computed score
  GetVirtualNetworkGatewayResiliencyInformationResult({
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
      'components': ?components == null ? null : pulumi.Input.encodeList<ResiliencyRecommendationComponentsResponse, Map<String, dynamic>>(components!, (value) => value.toMap()),
      'lastComputedTime': ?lastComputedTime,
      'maxScoreFromRecommendations': ?maxScoreFromRecommendations,
      'minScoreFromRecommendations': ?minScoreFromRecommendations,
      'nextEligibleComputeTime': ?nextEligibleComputeTime,
      'overallScore': ?overallScore,
      'scoreChange': ?scoreChange,
    };
  }

  factory GetVirtualNetworkGatewayResiliencyInformationResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayResiliencyInformationResult(
      components: map['components'] == null ? null : pulumi.Input.decodeList<ResiliencyRecommendationComponentsResponse>(map['components'], (value) => ResiliencyRecommendationComponentsResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastComputedTime: map['lastComputedTime'] == null ? null : map['lastComputedTime'] as String,
      maxScoreFromRecommendations: map['maxScoreFromRecommendations'] == null ? null : map['maxScoreFromRecommendations'] as String,
      minScoreFromRecommendations: map['minScoreFromRecommendations'] == null ? null : map['minScoreFromRecommendations'] as String,
      nextEligibleComputeTime: map['nextEligibleComputeTime'] == null ? null : map['nextEligibleComputeTime'] as String,
      overallScore: map['overallScore'] == null ? null : map['overallScore'] as String,
      scoreChange: map['scoreChange'] == null ? null : map['scoreChange'] as String,
    );
  }
}

