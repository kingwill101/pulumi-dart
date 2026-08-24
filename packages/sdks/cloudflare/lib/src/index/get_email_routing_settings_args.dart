// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_email_routing_settings_get_email_routing_settings_args_doc}
/// Arguments for getEmailRoutingSettings.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_routing_settings_get_email_routing_settings_args_doc}
class GetEmailRoutingSettingsArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetEmailRoutingSettingsArgs].
  /// [zoneId] Identifier.
  const GetEmailRoutingSettingsArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetEmailRoutingSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingSettingsArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
