// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LedgerCertificateBasedSecurityPrincipal {
  /// Specifies the Ledger Role to grant this Certificate Security Principal. Possible values are `Administrator`, `Contributor` and `Reader`.
  final pulumi.Input<String> ledgerRoleName;
  /// The public key, in PEM format, of the certificate used by this identity to authenticate with the Confidential Ledger.
  final pulumi.Input<String> pemPublicKey;

  /// Creates a new [LedgerCertificateBasedSecurityPrincipal].
  /// [ledgerRoleName] Specifies the Ledger Role to grant this Certificate Security Principal. Possible values are `Administrator`, `Contributor` and `Reader`.
  /// [pemPublicKey] The public key, in PEM format, of the certificate used by this identity to authenticate with the Confidential Ledger.
  const LedgerCertificateBasedSecurityPrincipal({
    required this.ledgerRoleName,
    required this.pemPublicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ledgerRoleName': ledgerRoleName,
      'pemPublicKey': pemPublicKey,
    };
  }

  factory LedgerCertificateBasedSecurityPrincipal.fromMap(Map<String, dynamic> map) {
    return LedgerCertificateBasedSecurityPrincipal(
      ledgerRoleName: pulumi.Input.fromValue(map['ledgerRoleName'] as String),
      pemPublicKey: pulumi.Input.fromValue(map['pemPublicKey'] as String),
    );
  }
}

