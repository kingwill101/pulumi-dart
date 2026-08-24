// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_gateway_certificate_get_zero_trust_gateway_certificate_args_doc}
/// Arguments for getZeroTrustGatewayCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_gateway_certificate_get_zero_trust_gateway_certificate_args_doc}
class GetZeroTrustGatewayCertificateArgs {
  final pulumi.Input<String?>? accountId;
  /// Identify the certificate with a UUID.
  final pulumi.Input<String> certificateId;

  /// Creates a new [GetZeroTrustGatewayCertificateArgs].
  /// [accountId] Optional.
  /// [certificateId] Identify the certificate with a UUID.
  const GetZeroTrustGatewayCertificateArgs({
    this.accountId,
    required this.certificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'certificateId': certificateId,
    };
  }

  factory GetZeroTrustGatewayCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayCertificateArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
    );
  }
}
