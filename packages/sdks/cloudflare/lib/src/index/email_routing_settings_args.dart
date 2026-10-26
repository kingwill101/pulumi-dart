// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_email_routing_settings_email_routing_settings_args_doc}
/// The set of arguments for EmailRoutingSettings.
/// {@endtemplate}
/// {@macro pulumi_index_email_routing_settings_email_routing_settings_args_doc}
class EmailRoutingSettingsArgs {
  /// Whether subaddressing (plus-addressing) is honored when matching incoming mail against routing rules.
  final pulumi.Input<bool?>? supportSubaddress;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [EmailRoutingSettingsArgs].
  /// [supportSubaddress] Whether subaddressing (plus-addressing) is honored when matching incoming mail against routing rules.
  /// [zoneId] Identifier.
  const EmailRoutingSettingsArgs({
    this.supportSubaddress,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportSubaddress': ?supportSubaddress,
      'zoneId': zoneId,
    };
  }

  factory EmailRoutingSettingsArgs.fromMap(Map<String, dynamic> map) {
    return EmailRoutingSettingsArgs(
      supportSubaddress: (() { final guardedValue = map['supportSubaddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
