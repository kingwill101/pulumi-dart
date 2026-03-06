// ignore_for_file: unused_element, unnecessary_cast

import 'get_firewall_settings_default_firewall_ids.dart';

/// Result data returned by getFirewallSettings.
class GetFirewallSettingsResult {
  final GetFirewallSettingsDefaultFirewallIds defaultFirewallIds;
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Creates a new [GetFirewallSettingsResult].
  /// [defaultFirewallIds] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetFirewallSettingsResult({
    required this.defaultFirewallIds,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultFirewallIds': defaultFirewallIds.toMap(),
      'id': id,
    };
  }

  factory GetFirewallSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallSettingsResult(
      defaultFirewallIds: GetFirewallSettingsDefaultFirewallIds.fromMap((map['defaultFirewallIds']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
    );
  }
}

