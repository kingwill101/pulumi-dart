// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateFilterConfigPiAndJailbreakFilterSettings {
  /// Possible values:
  /// LOW_AND_ABOVE
  /// MEDIUM_AND_ABOVE
  /// HIGH
  final pulumi.Input<String>? confidenceLevel;
  /// Tells whether Prompt injection and Jailbreak filter is enabled or
  /// disabled.
  /// Possible values:
  /// ENABLED
  /// DISABLED
  final pulumi.Input<String>? filterEnforcement;

  /// Creates a new [TemplateFilterConfigPiAndJailbreakFilterSettings].
  /// [confidenceLevel] Possible values:
  /// [filterEnforcement] Tells whether Prompt injection and Jailbreak filter is enabled or
  TemplateFilterConfigPiAndJailbreakFilterSettings({
    this.confidenceLevel,
    this.filterEnforcement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceLevel': ?confidenceLevel,
      'filterEnforcement': ?filterEnforcement,
    };
  }

  factory TemplateFilterConfigPiAndJailbreakFilterSettings.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigPiAndJailbreakFilterSettings(
      confidenceLevel: map['confidenceLevel'] == null ? null : (map['confidenceLevel']! as String).input(),
      filterEnforcement: map['filterEnforcement'] == null ? null : (map['filterEnforcement']! as String).input(),
    );
  }
}

