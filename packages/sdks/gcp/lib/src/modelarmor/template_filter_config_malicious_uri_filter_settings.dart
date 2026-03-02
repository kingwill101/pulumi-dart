// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateFilterConfigMaliciousUriFilterSettings {
  /// Tells whether the Malicious URI filter is enabled or disabled.
  /// Possible values:
  /// ENABLED
  /// DISABLED
  final pulumi.Input<String>? filterEnforcement;

  /// Creates a new [TemplateFilterConfigMaliciousUriFilterSettings].
  /// [filterEnforcement] Tells whether the Malicious URI filter is enabled or disabled.
  TemplateFilterConfigMaliciousUriFilterSettings({
    this.filterEnforcement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterEnforcement': ?filterEnforcement,
    };
  }

  factory TemplateFilterConfigMaliciousUriFilterSettings.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigMaliciousUriFilterSettings(
      filterEnforcement: map['filterEnforcement'] == null ? null : (map['filterEnforcement'] as String).input(),
    );
  }
}

