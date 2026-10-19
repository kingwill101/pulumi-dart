// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_wildfire_analysis_profile_wildfire_inline_cloud_analysis_rule_custom_file_types.dart';

class SecurityProfileWildfireAnalysisProfileWildfireInlineCloudAnalysisRule {
  /// The action to take when a rule is matched.
  /// Possible values are: `ALLOW`, `DENY`, `ALERT`.
  final pulumi.Input<String> action;
  /// Defines the custom file types to match for a rule. The API will only accept this if `fileSelectionMode` is set to `CUSTOM_FILE_TYPES`
  /// Structure is documented below.
  final pulumi.Input<SecurityProfileWildfireAnalysisProfileWildfireInlineCloudAnalysisRuleCustomFileTypes?>? customFileTypes;
  /// Direction of traffic to match for a rule.
  /// Possible values are: `UPLOAD`, `DOWNLOAD`, `BOTH`.
  final pulumi.Input<String> direction;
  /// Defines the file selection mode for a rule.
  /// Possible values are: `ALL_FILE_TYPES`, `CUSTOM_FILE_TYPES`.
  final pulumi.Input<String> fileSelectionMode;

  /// Creates a new [SecurityProfileWildfireAnalysisProfileWildfireInlineCloudAnalysisRule].
  /// [action] The action to take when a rule is matched.
  /// [customFileTypes] Defines the custom file types to match for a rule. The API will only accept this if `fileSelectionMode` is set to `CUSTOM_FILE_TYPES`
  /// [direction] Direction of traffic to match for a rule.
  /// [fileSelectionMode] Defines the file selection mode for a rule.
  const SecurityProfileWildfireAnalysisProfileWildfireInlineCloudAnalysisRule({
    required this.action,
    this.customFileTypes,
    required this.direction,
    required this.fileSelectionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'customFileTypes': ?pulumi.Input.mapOptionalInputValue<SecurityProfileWildfireAnalysisProfileWildfireInlineCloudAnalysisRuleCustomFileTypes, Map<String, dynamic>>(customFileTypes, (value) => value.toMap()),
      'direction': direction,
      'fileSelectionMode': fileSelectionMode,
    };
  }

  factory SecurityProfileWildfireAnalysisProfileWildfireInlineCloudAnalysisRule.fromMap(Map<String, dynamic> map) {
    return SecurityProfileWildfireAnalysisProfileWildfireInlineCloudAnalysisRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      customFileTypes: (() { final guardedValue = map['customFileTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityProfileWildfireAnalysisProfileWildfireInlineCloudAnalysisRuleCustomFileTypes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      fileSelectionMode: pulumi.Input.fromValue(map['fileSelectionMode'] as String),
    );
  }
}
