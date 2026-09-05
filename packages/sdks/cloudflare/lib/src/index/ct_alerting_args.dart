// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_ct_alerting_ct_alerting_args_doc}
/// The set of arguments for CtAlerting.
/// {@endtemplate}
/// {@macro pulumi_index_ct_alerting_ct_alerting_args_doc}
class CtAlertingArgs {
  /// Email addresses that receive CT alert notifications for the zone. A maximum of 100 addresses may be configured. Each address must be a valid RFC 5322 email address and must not contain a comma.
  final pulumi.Input<List<String>?>? emails;
  /// Whether CT alerting is enabled for the zone.
  final pulumi.Input<bool> enabled;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [CtAlertingArgs].
  /// [emails] Email addresses that receive CT alert notifications for the zone. A maximum of 100 addresses may be configured. Each address must be a valid RFC 5322 email address and must not contain a comma.
  /// [enabled] Whether CT alerting is enabled for the zone.
  /// [zoneId] Identifier.
  const CtAlertingArgs({
    this.emails,
    required this.enabled,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'enabled': enabled,
      'zoneId': zoneId,
    };
  }

  factory CtAlertingArgs.fromMap(Map<String, dynamic> map) {
    return CtAlertingArgs(
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
