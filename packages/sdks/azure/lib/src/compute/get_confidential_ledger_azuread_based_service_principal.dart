// ignore_for_file: unused_element, unnecessary_cast


class GetConfidentialLedgerAzureadBasedServicePrincipal {
  /// The Ledger Role to grant this Certificate Security Principal.
  final String ledgerRoleName;
  /// The Principal ID of the AzureAD Service Principal.
  final String principalId;
  /// The Tenant ID for this AzureAD Service Principal.
  final String tenantId;

  /// Creates a new [GetConfidentialLedgerAzureadBasedServicePrincipal].
  /// [ledgerRoleName] The Ledger Role to grant this Certificate Security Principal.
  /// [principalId] The Principal ID of the AzureAD Service Principal.
  /// [tenantId] The Tenant ID for this AzureAD Service Principal.
  GetConfidentialLedgerAzureadBasedServicePrincipal({
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

  factory GetConfidentialLedgerAzureadBasedServicePrincipal.fromMap(Map<String, dynamic> map) {
    return GetConfidentialLedgerAzureadBasedServicePrincipal(
      ledgerRoleName: map['ledgerRoleName'] as String,
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

