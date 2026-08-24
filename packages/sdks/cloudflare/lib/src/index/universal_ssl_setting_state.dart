// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UniversalSslSetting resources.
class UniversalSslSettingState {
  /// Disabling Universal SSL removes any currently active Universal SSL certificates for your zone from the edge and prevents any future Universal SSL certificates from being ordered. If there are no advanced certificates or custom certificates uploaded for the domain, visitors will be unable to access the domain over HTTPS.
  final pulumi.Input<bool?>? enabled;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [UniversalSslSettingState].
  /// [enabled] Disabling Universal SSL removes any currently active Universal SSL certificates for your zone from the edge and prevents any future Universal SSL certificates from being ordered. If there are no advanced certificates or custom certificates uploaded for the domain, visitors will be unable to access the domain over HTTPS.
  /// [zoneId] Identifier.
  const UniversalSslSettingState({
    this.enabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'zoneId': ?zoneId,
    };
  }

  factory UniversalSslSettingState.fromMap(Map<String, dynamic> map) {
    return UniversalSslSettingState(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
