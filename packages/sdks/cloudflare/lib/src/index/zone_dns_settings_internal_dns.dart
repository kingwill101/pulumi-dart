// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneDnsSettingsInternalDns {
  /// The ID of the zone to fallback to.
  final pulumi.Input<String?>? referenceZoneId;

  /// Creates a new [ZoneDnsSettingsInternalDns].
  /// [referenceZoneId] The ID of the zone to fallback to.
  const ZoneDnsSettingsInternalDns({
    this.referenceZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceZoneId': ?referenceZoneId,
    };
  }

  factory ZoneDnsSettingsInternalDns.fromMap(Map<String, dynamic> map) {
    return ZoneDnsSettingsInternalDns(
      referenceZoneId: (() { final guardedValue = map['referenceZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
