// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CtAlerting resources.
class CtAlertingState {
  /// Email addresses that receive CT alert notifications for the zone. A maximum of 100 addresses may be configured. Each address must be a valid RFC 5322 email address and must not contain a comma.
  final pulumi.Input<List<String>?>? emails;
  /// Whether CT alerting is enabled for the zone.
  final pulumi.Input<bool?>? enabled;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CtAlertingState].
  /// [emails] Email addresses that receive CT alert notifications for the zone. A maximum of 100 addresses may be configured. Each address must be a valid RFC 5322 email address and must not contain a comma.
  /// [enabled] Whether CT alerting is enabled for the zone.
  /// [zoneId] Identifier.
  const CtAlertingState({
    this.emails,
    this.enabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'enabled': ?enabled,
      'zoneId': ?zoneId,
    };
  }

  factory CtAlertingState.fromMap(Map<String, dynamic> map) {
    return CtAlertingState(
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
