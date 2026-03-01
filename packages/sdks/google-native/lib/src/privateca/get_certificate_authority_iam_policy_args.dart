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
    required pulumi.Output<String> certificateAuthorityId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      certificateAuthorityId = pulumi.Input.asInput<String>(certificateAuthorityId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      certificateAuthorityId: pulumi.Output.create<String>(map['certificateAuthorityId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

