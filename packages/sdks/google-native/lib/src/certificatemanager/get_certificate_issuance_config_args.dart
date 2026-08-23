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
  const GetCertificateIssuanceConfigArgs({
    required this.certificateIssuanceConfigId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateIssuanceConfigId': certificateIssuanceConfigId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCertificateIssuanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateIssuanceConfigArgs(
      certificateIssuanceConfigId: pulumi.Input.fromValue(map['certificateIssuanceConfigId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
