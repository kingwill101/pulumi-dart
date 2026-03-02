// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1beta1_get_certificate_authority_iam_policy_args_doc}
/// Arguments for getCertificateAuthorityIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1beta1_get_certificate_authority_iam_policy_args_doc}
class GetCertificateAuthorityIamPolicyArgs {
  final pulumi.Input<String> certificateAuthorityId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateAuthorityIamPolicyArgs].
  /// [certificateAuthorityId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetCertificateAuthorityIamPolicyArgs({
    required this.certificateAuthorityId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityId': certificateAuthorityId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetCertificateAuthorityIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateAuthorityIamPolicyArgs(
      certificateAuthorityId: (map['certificateAuthorityId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

