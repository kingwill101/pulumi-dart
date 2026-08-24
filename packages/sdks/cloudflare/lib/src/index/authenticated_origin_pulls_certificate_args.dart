// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_authenticated_origin_pulls_certificate_authenticated_origin_pulls_certificate_args_doc}
/// The set of arguments for AuthenticatedOriginPullsCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_authenticated_origin_pulls_certificate_authenticated_origin_pulls_certificate_args_doc}
class AuthenticatedOriginPullsCertificateArgs {
  /// The zone's leaf certificate.
  final pulumi.Input<String> certificate;
  /// The zone's private key.
  final pulumi.Input<String> privateKey;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [AuthenticatedOriginPullsCertificateArgs].
  /// [certificate] The zone's leaf certificate.
  /// [privateKey] The zone's private key.
  /// [zoneId] Identifier.
  const AuthenticatedOriginPullsCertificateArgs({
    required this.certificate,
    required this.privateKey,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'privateKey': privateKey,
      'zoneId': zoneId,
    };
  }

  factory AuthenticatedOriginPullsCertificateArgs.fromMap(Map<String, dynamic> map) {
    return AuthenticatedOriginPullsCertificateArgs(
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
