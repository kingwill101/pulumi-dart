// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_phrase_match_rule_config_response.dart';

/// The data for a phrase match rule.
class GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse {
  /// Provides additional information about the rule that specifies how to apply the rule.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfigResponse> config;
  /// Specifies whether the phrase must be missing from the transcript segment or present in the transcript segment.
  final pulumi.Input<bool> negated;
  /// The phrase to be matched.
  final pulumi.Input<String> query;

  /// Creates a new [GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse].
  /// [config] Provides additional information about the rule that specifies how to apply the rule.
  /// [negated] Specifies whether the phrase must be missing from the transcript segment or present in the transcript segment.
  /// [query] The phrase to be matched.
  GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse({
    required this.config,
    required this.negated,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfigResponse, Map<String, dynamic>>(config, (value) => value.toMap()),
      'negated': negated,
      'query': query,
    };
  }

  factory GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse(
      config: (GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfigResponse.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      negated: (map['negated'] as bool).input(),
      query: (map['query'] as String).input(),
    );
  }
}

