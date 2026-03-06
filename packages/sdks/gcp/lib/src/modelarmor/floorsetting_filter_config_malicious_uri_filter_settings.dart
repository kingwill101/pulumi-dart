// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FloorsettingFilterConfigMaliciousUriFilterSettings {
  /// Tells whether the Malicious URI filter is enabled or disabled.
  /// Possible values:
  /// ENABLED
  /// DISABLED
  final pulumi.Input<String>? filterEnforcement;

  /// Creates a new [FloorsettingFilterConfigMaliciousUriFilterSettings].
  /// [filterEnforcement] Tells whether the Malicious URI filter is enabled or disabled.
  const FloorsettingFilterConfigMaliciousUriFilterSettings({
    this.filterEnforcement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterEnforcement': ?filterEnforcement,
    };
  }

  factory FloorsettingFilterConfigMaliciousUriFilterSettings.fromMap(Map<String, dynamic> map) {
    return FloorsettingFilterConfigMaliciousUriFilterSettings(
      filterEnforcement: (() { final guardedValue = map['filterEnforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

