// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_settings_default_firewall_ids.dart';

/// Input properties used for looking up and filtering FirewallSettings resources.
class FirewallSettingsState {
  /// A map of default firewall IDs for various interfaces.
  final pulumi.Input<FirewallSettingsDefaultFirewallIds>? defaultFirewallIds;

  /// Creates a new [FirewallSettingsState].
  /// [defaultFirewallIds] A map of default firewall IDs for various interfaces.
  FirewallSettingsState({
    this.defaultFirewallIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultFirewallIds': ?pulumi.Input.mapOptionalInputValue<FirewallSettingsDefaultFirewallIds, Map<String, dynamic>>(defaultFirewallIds, (value) => value.toMap()),
    };
  }

  factory FirewallSettingsState.fromMap(Map<String, dynamic> map) {
    return FirewallSettingsState(
      defaultFirewallIds: map['defaultFirewallIds'] == null ? null : (FirewallSettingsDefaultFirewallIds.fromMap((map['defaultFirewallIds'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

