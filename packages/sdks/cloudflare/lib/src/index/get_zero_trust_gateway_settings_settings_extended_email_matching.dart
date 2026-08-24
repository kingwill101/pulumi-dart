// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewaySettingsSettingsExtendedEmailMatching {
  /// Specify whether to match all variants of user emails (with + or . modifiers) used as criteria in Firewall policies.
  final pulumi.Input<bool> enabled;
  /// Indicate that this setting was shared via the Orgs API and read only for the current account.
  final pulumi.Input<bool> readOnly;
  /// Indicate the account tag of the account that shared this setting.
  final pulumi.Input<String> sourceAccount;
  /// Indicate the version number of the setting.
  final pulumi.Input<int> version;

  /// Creates a new [GetZeroTrustGatewaySettingsSettingsExtendedEmailMatching].
  /// [enabled] Specify whether to match all variants of user emails (with + or . modifiers) used as criteria in Firewall policies.
  /// [readOnly] Indicate that this setting was shared via the Orgs API and read only for the current account.
  /// [sourceAccount] Indicate the account tag of the account that shared this setting.
  /// [version] Indicate the version number of the setting.
  const GetZeroTrustGatewaySettingsSettingsExtendedEmailMatching({
    required this.enabled,
    required this.readOnly,
    required this.sourceAccount,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'readOnly': readOnly,
      'sourceAccount': sourceAccount,
      'version': version,
    };
  }

  factory GetZeroTrustGatewaySettingsSettingsExtendedEmailMatching.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettingsExtendedEmailMatching(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
      sourceAccount: pulumi.Input.fromValue(map['sourceAccount'] as String),
      version: pulumi.Input.fromValue((map['version'] as num).toInt()),
    );
  }
}
