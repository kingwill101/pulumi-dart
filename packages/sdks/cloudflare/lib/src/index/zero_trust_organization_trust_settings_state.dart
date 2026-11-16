// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustOrganizationTrustSettings resources.
class ZeroTrustOrganizationTrustSettingsState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Whether all accounts in the organization are trusted to use this account's cross-account Access resources.
  final pulumi.Input<bool?>? grantTrustToAllAccountsInOrg;
  /// Explicit account IDs trusted to use this account's cross-account Access resources. At most 100 unique valid account IDs are accepted. Omitted from responses when empty.
  final pulumi.Input<List<String>?>? trustingAccounts;

  /// Creates a new [ZeroTrustOrganizationTrustSettingsState].
  /// [accountId] Identifier.
  /// [grantTrustToAllAccountsInOrg] Whether all accounts in the organization are trusted to use this account's cross-account Access resources.
  /// [trustingAccounts] Explicit account IDs trusted to use this account's cross-account Access resources. At most 100 unique valid account IDs are accepted. Omitted from responses when empty.
  const ZeroTrustOrganizationTrustSettingsState({
    this.accountId,
    this.grantTrustToAllAccountsInOrg,
    this.trustingAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'grantTrustToAllAccountsInOrg': ?grantTrustToAllAccountsInOrg,
      'trustingAccounts': ?trustingAccounts,
    };
  }

  factory ZeroTrustOrganizationTrustSettingsState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustOrganizationTrustSettingsState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantTrustToAllAccountsInOrg: (() { final guardedValue = map['grantTrustToAllAccountsInOrg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      trustingAccounts: (() { final guardedValue = map['trustingAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
