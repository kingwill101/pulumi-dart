// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_neo_usage_cap_args_doc}
/// The set of arguments for UsageCap.
/// {@endtemplate}
/// {@macro pulumi_api_neo_usage_cap_args_doc}
class UsageCapArgs {
  /// Monthly cap in US-dollar cents. Must be at least 1000 ($10, the self-serve floor) and at most 100_000_000 ($1M). Outside that range the call returns 400.
  final pulumi.Input<int> capCents;
  /// Whether to send threshold-warning emails (50/80/95/100% of the cap) to billing admins. Omit (null) to leave the current setting unchanged; new caps default to enabled.
  final pulumi.Input<bool?>? notificationsEnabled;
  /// The organization name
  final pulumi.Input<String> orgName;

  /// Creates a new [UsageCapArgs].
  /// [capCents] Monthly cap in US-dollar cents. Must be at least 1000 ($10, the self-serve floor) and at most 100_000_000 ($1M). Outside that range the call returns 400.
  /// [notificationsEnabled] Whether to send threshold-warning emails (50/80/95/100% of the cap) to billing admins. Omit (null) to leave the current setting unchanged; new caps default to enabled.
  /// [orgName] The organization name
  const UsageCapArgs({
    required this.capCents,
    this.notificationsEnabled,
    required this.orgName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capCents': capCents,
      'notificationsEnabled': ?notificationsEnabled,
      'orgName': orgName,
    };
  }

  factory UsageCapArgs.fromMap(Map<String, dynamic> map) {
    return UsageCapArgs(
      capCents: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['capCents'])),
      notificationsEnabled: (() { final guardedValue = map['notificationsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
    );
  }
}
