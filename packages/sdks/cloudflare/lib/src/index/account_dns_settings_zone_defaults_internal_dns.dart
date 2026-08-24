// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountDnsSettingsZoneDefaultsInternalDns {
  /// The ID of the zone to fallback to.
  final pulumi.Input<String?>? referenceZoneId;

  /// Creates a new [AccountDnsSettingsZoneDefaultsInternalDns].
  /// [referenceZoneId] The ID of the zone to fallback to.
  const AccountDnsSettingsZoneDefaultsInternalDns({
    this.referenceZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceZoneId': ?referenceZoneId,
    };
  }

  factory AccountDnsSettingsZoneDefaultsInternalDns.fromMap(Map<String, dynamic> map) {
    return AccountDnsSettingsZoneDefaultsInternalDns(
      referenceZoneId: (() { final guardedValue = map['referenceZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
