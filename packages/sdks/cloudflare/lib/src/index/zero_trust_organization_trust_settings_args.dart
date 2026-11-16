// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_organization_trust_settings_zero_trust_organization_trust_settings_args_doc}
/// The set of arguments for ZeroTrustOrganizationTrustSettings.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_organization_trust_settings_zero_trust_organization_trust_settings_args_doc}
class ZeroTrustOrganizationTrustSettingsArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Whether all accounts in the organization are trusted to use this account's cross-account Access resources.
  final pulumi.Input<bool> grantTrustToAllAccountsInOrg;
  /// Explicit account IDs trusted to use this account's cross-account Access resources. At most 100 unique valid account IDs are accepted. Omitted from responses when empty.
  final pulumi.Input<List<String>?>? trustingAccounts;

  /// Creates a new [ZeroTrustOrganizationTrustSettingsArgs].
  /// [accountId] Identifier.
  /// [grantTrustToAllAccountsInOrg] Whether all accounts in the organization are trusted to use this account's cross-account Access resources.
  /// [trustingAccounts] Explicit account IDs trusted to use this account's cross-account Access resources. At most 100 unique valid account IDs are accepted. Omitted from responses when empty.
  const ZeroTrustOrganizationTrustSettingsArgs({
    required this.accountId,
    required this.grantTrustToAllAccountsInOrg,
    this.trustingAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'grantTrustToAllAccountsInOrg': grantTrustToAllAccountsInOrg,
      'trustingAccounts': ?trustingAccounts,
    };
  }

  factory ZeroTrustOrganizationTrustSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustOrganizationTrustSettingsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      grantTrustToAllAccountsInOrg: pulumi.Input.fromValue(map['grantTrustToAllAccountsInOrg'] as bool),
      trustingAccounts: (() { final guardedValue = map['trustingAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
