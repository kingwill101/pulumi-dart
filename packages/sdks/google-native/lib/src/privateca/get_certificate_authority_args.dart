// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1_get_certificate_authority_args_doc}
/// Arguments for getCertificateAuthority.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_get_certificate_authority_args_doc}
class GetCertificateAuthorityArgs {
  final pulumi.Input<String> caPoolId;
  final pulumi.Input<String> certificateAuthorityId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateAuthorityArgs].
  /// [caPoolId] Required.
  /// [certificateAuthorityId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetCertificateAuthorityArgs({
    required this.caPoolId,
    required this.certificateAuthorityId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPoolId': caPoolId,
      'certificateAuthorityId': certificateAuthorityId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCertificateAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateAuthorityArgs(
      caPoolId: pulumi.Input.fromValue(map['caPoolId'] as String),
      certificateAuthorityId: pulumi.Input.fromValue(map['certificateAuthorityId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
