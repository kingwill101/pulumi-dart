// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfidentialLedgerCertificateBasedSecurityPrincipal {
  /// The Ledger Role to grant this Certificate Security Principal.
  final pulumi.Input<String> ledgerRoleName;

  /// The public key, in PEM format, of the certificate used by this identity to authenticate with the Confidential Ledger.
  final pulumi.Input<String> pemPublicKey;

  /// Creates a new [GetConfidentialLedgerCertificateBasedSecurityPrincipal].
  /// [ledgerRoleName] The Ledger Role to grant this Certificate Security Principal.
  /// [pemPublicKey] The public key, in PEM format, of the certificate used by this identity to authenticate with the Confidential Ledger.
  GetConfidentialLedgerCertificateBasedSecurityPrincipal({
    required this.ledgerRoleName,
    required this.pemPublicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ledgerRoleName': ledgerRoleName,
      'pemPublicKey': pemPublicKey,
    };
  }

  factory GetConfidentialLedgerCertificateBasedSecurityPrincipal.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConfidentialLedgerCertificateBasedSecurityPrincipal(
      ledgerRoleName: pulumi.Input.fromValue(map['ledgerRoleName'] as String),
      pemPublicKey: pulumi.Input.fromValue(map['pemPublicKey'] as String),
    );
  }
}
