// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustOrganizationServiceTokenInactivity {
  /// The action applied to an inactive service token.
  /// Available values: "disable", "delete".
  final pulumi.Input<String> action;
  /// Whether automatic enforcement for inactive service tokens is enabled.
  final pulumi.Input<bool> enabled;
  /// The number of days a service token must be inactive before the configured action is applied.
  final pulumi.Input<int> inactivityThresholdDays;

  /// Creates a new [ZeroTrustOrganizationServiceTokenInactivity].
  /// [action] The action applied to an inactive service token.
  /// [enabled] Whether automatic enforcement for inactive service tokens is enabled.
  /// [inactivityThresholdDays] The number of days a service token must be inactive before the configured action is applied.
  const ZeroTrustOrganizationServiceTokenInactivity({
    required this.action,
    required this.enabled,
    required this.inactivityThresholdDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'enabled': enabled,
      'inactivityThresholdDays': inactivityThresholdDays,
    };
  }

  factory ZeroTrustOrganizationServiceTokenInactivity.fromMap(Map<String, dynamic> map) {
    return ZeroTrustOrganizationServiceTokenInactivity(
      action: pulumi.Input.fromValue(map['action'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      inactivityThresholdDays: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['inactivityThresholdDays'])),
    );
  }
}
