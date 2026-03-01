// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_v1_get_certificate_issuance_config_args_doc}
/// Arguments for getCertificateIssuanceConfig.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_get_certificate_issuance_config_args_doc}
class GetCertificateIssuanceConfigArgs {
  final pulumi.Input<String> certificateIssuanceConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateIssuanceConfigArgs].
  /// [certificateIssuanceConfigId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCertificateIssuanceConfigArgs({
    required pulumi.Output<String> certificateIssuanceConfigId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      certificateIssuanceConfigId = pulumi.Input.asInput<String>(certificateIssuanceConfigId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateIssuanceConfigId': certificateIssuanceConfigId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCertificateIssuanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateIssuanceConfigArgs(
      certificateIssuanceConfigId: pulumi.Output.create<String>(map['certificateIssuanceConfigId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

