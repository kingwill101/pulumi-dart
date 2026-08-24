// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_client_certificate_client_certificate_args_doc}
/// The set of arguments for ClientCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_client_certificate_client_certificate_args_doc}
class ClientCertificateArgs {
  /// The Certificate Signing Request (CSR). Must be newline-encoded.
  final pulumi.Input<String> csr;
  final pulumi.Input<bool?>? reactivate;
  /// The number of days the Client Certificate will be valid after the issuedOn date.
  final pulumi.Input<int> validityDays;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ClientCertificateArgs].
  /// [csr] The Certificate Signing Request (CSR). Must be newline-encoded.
  /// [reactivate] Optional.
  /// [validityDays] The number of days the Client Certificate will be valid after the issuedOn date.
  /// [zoneId] Identifier.
  const ClientCertificateArgs({
    required this.csr,
    this.reactivate,
    required this.validityDays,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csr': csr,
      'reactivate': ?reactivate,
      'validityDays': validityDays,
      'zoneId': zoneId,
    };
  }

  factory ClientCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ClientCertificateArgs(
      csr: pulumi.Input.fromValue(map['csr'] as String),
      reactivate: (() { final guardedValue = map['reactivate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validityDays: pulumi.Input.fromValue((map['validityDays'] as num).toInt()),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
