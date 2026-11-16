// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustOrganizationTrustSettings.
class GetZeroTrustOrganizationTrustSettingsResult {
  /// Identifier.
  final String? accountId;
  /// Whether all accounts in the organization are trusted to use this account's cross-account Access resources.
  final bool? grantTrustToAllAccountsInOrg;
  /// Identifier.
  final String? id;
  /// Explicit account IDs trusted to use this account's cross-account Access resources. At most 100 unique valid account IDs are accepted. Omitted from responses when empty.
  final List<String>? trustingAccounts;

  /// Creates a new [GetZeroTrustOrganizationTrustSettingsResult].
  /// [accountId] Identifier.
  /// [grantTrustToAllAccountsInOrg] Whether all accounts in the organization are trusted to use this account's cross-account Access resources.
  /// [id] Identifier.
  /// [trustingAccounts] Explicit account IDs trusted to use this account's cross-account Access resources. At most 100 unique valid account IDs are accepted. Omitted from responses when empty.
  const GetZeroTrustOrganizationTrustSettingsResult({
    this.accountId,
    this.grantTrustToAllAccountsInOrg,
    this.id,
    this.trustingAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'grantTrustToAllAccountsInOrg': ?grantTrustToAllAccountsInOrg,
      'id': ?id,
      'trustingAccounts': ?trustingAccounts,
    };
  }

  factory GetZeroTrustOrganizationTrustSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustOrganizationTrustSettingsResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      grantTrustToAllAccountsInOrg: (() { final guardedValue = map['grantTrustToAllAccountsInOrg']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trustingAccounts: (() { final guardedValue = map['trustingAccounts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
