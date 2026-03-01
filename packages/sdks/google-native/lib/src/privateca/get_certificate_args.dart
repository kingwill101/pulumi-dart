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
    required pulumi.Output<String> caPoolId,
    required pulumi.Output<String> certificateId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      caPoolId = pulumi.Input.asInput<String>(caPoolId),
      certificateId = pulumi.Input.asInput<String>(certificateId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      caPoolId: pulumi.Output.create<String>(map['caPoolId'] as String),
      certificateId: pulumi.Output.create<String>(map['certificateId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

