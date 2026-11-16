// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountLegacyFlagsEnterpriseZoneQuota {
  /// Number of additional Enterprise zones available. Returns 0 if the quota is not allocated or is exhausted.
  final pulumi.Input<int?>? available;
  /// Current number of Enterprise zones.
  final pulumi.Input<int?>? current;
  /// Maximum number of Enterprise zones allowed.
  final pulumi.Input<int?>? maximum;

  /// Creates a new [AccountLegacyFlagsEnterpriseZoneQuota].
  /// [available] Number of additional Enterprise zones available. Returns 0 if the quota is not allocated or is exhausted.
  /// [current] Current number of Enterprise zones.
  /// [maximum] Maximum number of Enterprise zones allowed.
  const AccountLegacyFlagsEnterpriseZoneQuota({
    this.available,
    this.current,
    this.maximum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': ?available,
      'current': ?current,
      'maximum': ?maximum,
    };
  }

  factory AccountLegacyFlagsEnterpriseZoneQuota.fromMap(Map<String, dynamic> map) {
    return AccountLegacyFlagsEnterpriseZoneQuota(
      available: (() { final guardedValue = map['available']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      current: (() { final guardedValue = map['current']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maximum: (() { final guardedValue = map['maximum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
