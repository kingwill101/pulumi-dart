// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_exact_match_config_response.dart';

/// Configuration information of a phrase match rule.
class GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfigResponse {
  /// The configuration for the exact match rule.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1ExactMatchConfigResponse> exactMatchConfig;

  /// Creates a new [GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfigResponse].
  /// [exactMatchConfig] The configuration for the exact match rule.
  GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfigResponse({
    required this.exactMatchConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatchConfig': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1ExactMatchConfigResponse, Map<String, dynamic>>(exactMatchConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfigResponse(
      exactMatchConfig: (GoogleCloudContactcenterinsightsV1ExactMatchConfigResponse.fromMap((map['exactMatchConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

