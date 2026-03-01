// ignore_for_file: unused_element, unnecessary_cast


class LedgerAzureadBasedServicePrincipal {
  /// Specifies the Ledger Role to grant this AzureAD Service Principal. Possible values are `Administrator`, `Contributor` and `Reader`.
  final String ledgerRoleName;
  /// Specifies the Principal ID of the AzureAD Service Principal.
  final String principalId;
  /// Specifies the Tenant ID for this AzureAD Service Principal.
  final String tenantId;

  /// Creates a new [LedgerAzureadBasedServicePrincipal].
  /// [ledgerRoleName] Specifies the Ledger Role to grant this AzureAD Service Principal. Possible values are `Administrator`, `Contributor` and `Reader`.
  /// [principalId] Specifies the Principal ID of the AzureAD Service Principal.
  /// [tenantId] Specifies the Tenant ID for this AzureAD Service Principal.
  LedgerAzureadBasedServicePrincipal({
    required this.ledgerRoleName,
    required this.principalId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ledgerRoleName': ledgerRoleName,
      'principalId': principalId,
      'tenantId': tenantId,
    };
  }

  factory LedgerAzureadBasedServicePrincipal.fromMap(Map<String, dynamic> map) {
    return LedgerAzureadBasedServicePrincipal(
      ledgerRoleName: map['ledgerRoleName'] as String,
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

