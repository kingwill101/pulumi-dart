// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_authenticated_origin_pulls_hostname_certificate_authenticated_origin_pulls_hostname_certificate_args_doc}
/// The set of arguments for AuthenticatedOriginPullsHostnameCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_authenticated_origin_pulls_hostname_certificate_authenticated_origin_pulls_hostname_certificate_args_doc}
class AuthenticatedOriginPullsHostnameCertificateArgs {
  /// The hostname certificate.
  final pulumi.Input<String> certificate;
  /// The hostname certificate's private key.
  final pulumi.Input<String> privateKey;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [AuthenticatedOriginPullsHostnameCertificateArgs].
  /// [certificate] The hostname certificate.
  /// [privateKey] The hostname certificate's private key.
  /// [zoneId] Identifier.
  const AuthenticatedOriginPullsHostnameCertificateArgs({
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

  factory AuthenticatedOriginPullsHostnameCertificateArgs.fromMap(Map<String, dynamic> map) {
    return AuthenticatedOriginPullsHostnameCertificateArgs(
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
