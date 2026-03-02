// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resiliency Recommendation details
class GatewayResiliencyRecommendationResponse {
  /// Link to the public documentation for the associated recommendation
  final pulumi.Input<String>? callToActionLink;
  /// Acton items to apply the recommendation
  final pulumi.Input<String>? callToActionText;
  /// Recommendation Id
  final pulumi.Input<String>? recommendationId;
  /// Recommendation details
  final pulumi.Input<String>? recommendationText;
  /// Recommendation Title
  final pulumi.Input<String>? recommendationTitle;
  /// Impact associated with the recommendation
  final pulumi.Input<String>? severity;

  /// Creates a new [GatewayResiliencyRecommendationResponse].
  /// [callToActionLink] Link to the public documentation for the associated recommendation
  /// [callToActionText] Acton items to apply the recommendation
  /// [recommendationId] Recommendation Id
  /// [recommendationText] Recommendation details
  /// [recommendationTitle] Recommendation Title
  /// [severity] Impact associated with the recommendation
  GatewayResiliencyRecommendationResponse({
    this.callToActionLink,
    this.callToActionText,
    this.recommendationId,
    this.recommendationText,
    this.recommendationTitle,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callToActionLink': ?callToActionLink,
      'callToActionText': ?callToActionText,
      'recommendationId': ?recommendationId,
      'recommendationText': ?recommendationText,
      'recommendationTitle': ?recommendationTitle,
      'severity': ?severity,
    };
  }

  factory GatewayResiliencyRecommendationResponse.fromMap(Map<String, dynamic> map) {
    return GatewayResiliencyRecommendationResponse(
      callToActionLink: map['callToActionLink'] == null ? null : (map['callToActionLink'] as String).input(),
      callToActionText: map['callToActionText'] == null ? null : (map['callToActionText'] as String).input(),
      recommendationId: map['recommendationId'] == null ? null : (map['recommendationId'] as String).input(),
      recommendationText: map['recommendationText'] == null ? null : (map['recommendationText'] as String).input(),
      recommendationTitle: map['recommendationTitle'] == null ? null : (map['recommendationTitle'] as String).input(),
      severity: map['severity'] == null ? null : (map['severity'] as String).input(),
    );
  }
}

