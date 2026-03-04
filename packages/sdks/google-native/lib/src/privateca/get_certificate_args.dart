// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_get_certificate_args_doc}
class GetCertificateArgs {
  final pulumi.Input<String> caPoolId;
  final pulumi.Input<String> certificateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateArgs].
  /// [caPoolId] Required.
  /// [certificateId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCertificateArgs({
    required this.caPoolId,
    required this.certificateId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPoolId': caPoolId,
      'certificateId': certificateId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      caPoolId: pulumi.Input.fromValue(map['caPoolId'] as String),
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
