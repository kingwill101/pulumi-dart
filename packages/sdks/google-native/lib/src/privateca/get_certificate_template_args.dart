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
    required this.certificateTemplateId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateTemplateId': certificateTemplateId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCertificateTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateTemplateArgs(
      certificateTemplateId: pulumi.Input.fromValue(map['certificateTemplateId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

