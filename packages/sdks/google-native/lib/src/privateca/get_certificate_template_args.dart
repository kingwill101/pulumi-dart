// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1_get_certificate_template_args_doc}
/// Arguments for getCertificateTemplate.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_get_certificate_template_args_doc}
class GetCertificateTemplateArgs {
  final pulumi.Input<String> certificateTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateTemplateArgs].
  /// [certificateTemplateId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCertificateTemplateArgs({
    required pulumi.Output<String> certificateTemplateId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      certificateTemplateId = pulumi.Input.asInput<String>(certificateTemplateId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateTemplateId': certificateTemplateId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCertificateTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateTemplateArgs(
      certificateTemplateId: pulumi.Output.create<String>(map['certificateTemplateId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

