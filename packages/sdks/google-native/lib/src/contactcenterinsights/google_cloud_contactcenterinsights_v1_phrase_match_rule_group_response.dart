// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_phrase_match_rule_response.dart';

/// A message representing a rule in the phrase matcher.
class GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse {
  /// A list of phrase match rules that are included in this group.
  final pulumi.Input<List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse>> phraseMatchRules;
  /// The type of this phrase match rule group.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse].
  /// [phraseMatchRules] A list of phrase match rules that are included in this group.
  /// [type] The type of this phrase match rule group.
  const GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse({
    required this.phraseMatchRules,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phraseMatchRules': pulumi.Input.mapInputValue<List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse>, List<Map<String, dynamic>>>(phraseMatchRules, (value) => pulumi.Input.encodeList<GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse(
      phraseMatchRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse>(map['phraseMatchRules']!, (value) => GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

