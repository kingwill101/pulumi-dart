// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_access_mtls_certificate_get_zero_trust_access_mtls_certificate_args_doc}
/// Arguments for getZeroTrustAccessMtlsCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_mtls_certificate_get_zero_trust_access_mtls_certificate_args_doc}
class GetZeroTrustAccessMtlsCertificateArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// UUID.
  final pulumi.Input<String> certificateId;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZeroTrustAccessMtlsCertificateArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [certificateId] UUID.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessMtlsCertificateArgs({
    this.accountId,
    required this.certificateId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'certificateId': certificateId,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessMtlsCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessMtlsCertificateArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
