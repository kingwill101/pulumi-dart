// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_exact_match_config.dart';

/// Configuration information of a phrase match rule.
class GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig {
  /// The configuration for the exact match rule.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1ExactMatchConfig>? exactMatchConfig;

  /// Creates a new [GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig].
  /// [exactMatchConfig] The configuration for the exact match rule.
  const GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig({
    this.exactMatchConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatchConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContactcenterinsightsV1ExactMatchConfig, Map<String, dynamic>>(exactMatchConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig(
      exactMatchConfig: (() { final guardedValue = map['exactMatchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1ExactMatchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

