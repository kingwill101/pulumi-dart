// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_access_mtls_certificate_zero_trust_access_mtls_certificate_args_doc}
/// The set of arguments for ZeroTrustAccessMtlsCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_access_mtls_certificate_zero_trust_access_mtls_certificate_args_doc}
class ZeroTrustAccessMtlsCertificateArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// The hostnames of the applications that will use this certificate.
  final pulumi.Input<List<String>?>? associatedHostnames;
  /// The certificate content.
  final pulumi.Input<String> certificate;
  /// The name of the certificate.
  final pulumi.Input<String> name;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZeroTrustAccessMtlsCertificateArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [associatedHostnames] The hostnames of the applications that will use this certificate.
  /// [certificate] The certificate content.
  /// [name] The name of the certificate.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const ZeroTrustAccessMtlsCertificateArgs({
    this.accountId,
    this.associatedHostnames,
    required this.certificate,
    required this.name,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'associatedHostnames': ?associatedHostnames,
      'certificate': certificate,
      'name': name,
      'zoneId': ?zoneId,
    };
  }

  factory ZeroTrustAccessMtlsCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessMtlsCertificateArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associatedHostnames: (() { final guardedValue = map['associatedHostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
