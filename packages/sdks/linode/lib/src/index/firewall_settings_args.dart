// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_settings_default_firewall_ids.dart';

/// {@template pulumi_index_firewall_settings_firewall_settings_args_doc}
/// The set of arguments for FirewallSettings.
/// {@endtemplate}
/// {@macro pulumi_index_firewall_settings_firewall_settings_args_doc}
class FirewallSettingsArgs {
  /// A map of default firewall IDs for various interfaces.
  final pulumi.Input<FirewallSettingsDefaultFirewallIds>? defaultFirewallIds;

  /// Creates a new [FirewallSettingsArgs].
  /// [defaultFirewallIds] A map of default firewall IDs for various interfaces.
  FirewallSettingsArgs({this.defaultFirewallIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultFirewallIds':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallSettingsDefaultFirewallIds,
            Map<String, dynamic>
          >(defaultFirewallIds, (value) => value.toMap()),
    };
  }

  factory FirewallSettingsArgs.fromMap(Map<String, dynamic> map) {
    return FirewallSettingsArgs(
      defaultFirewallIds: (() {
        final guardedValue = map['defaultFirewallIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallSettingsDefaultFirewallIds.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
