// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfidentialLedgerAzureadBasedServicePrincipal {
  /// The Ledger Role to grant this Certificate Security Principal.
  final pulumi.Input<String> ledgerRoleName;
  /// The Principal ID of the AzureAD Service Principal.
  final pulumi.Input<String> principalId;
  /// The Tenant ID for this AzureAD Service Principal.
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetConfidentialLedgerAzureadBasedServicePrincipal].
  /// [ledgerRoleName] The Ledger Role to grant this Certificate Security Principal.
  /// [principalId] The Principal ID of the AzureAD Service Principal.
  /// [tenantId] The Tenant ID for this AzureAD Service Principal.
  const GetConfidentialLedgerAzureadBasedServicePrincipal({
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
      ledgerRoleName: pulumi.Input.fromValue(map['ledgerRoleName'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}

