// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_email_routing_settings_email_routing_settings_args_doc}
/// The set of arguments for EmailRoutingSettings.
/// {@endtemplate}
/// {@macro pulumi_index_email_routing_settings_email_routing_settings_args_doc}
class EmailRoutingSettingsArgs {
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [EmailRoutingSettingsArgs].
  /// [zoneId] Identifier.
  const EmailRoutingSettingsArgs({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory EmailRoutingSettingsArgs.fromMap(Map<String, dynamic> map) {
    return EmailRoutingSettingsArgs(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
