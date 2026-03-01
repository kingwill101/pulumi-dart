// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1_get_ca_pool_certificate_authority_certificate_revocation_list_iam_policy_args_doc}
/// Arguments for getCaPoolCertificateAuthorityCertificateRevocationListIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_get_ca_pool_certificate_authority_certificate_revocation_list_iam_policy_args_doc}
class GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs {
  final pulumi.Input<String> caPoolId;
  final pulumi.Input<String> certificateAuthorityId;
  final pulumi.Input<String> certificateRevocationListId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs].
  /// [caPoolId] Required.
  /// [certificateAuthorityId] Required.
  /// [certificateRevocationListId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs({
    required pulumi.Output<String> caPoolId,
    required pulumi.Output<String> certificateAuthorityId,
    required pulumi.Output<String> certificateRevocationListId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      caPoolId = pulumi.Input.asInput<String>(caPoolId),
      certificateAuthorityId = pulumi.Input.asInput<String>(certificateAuthorityId),
      certificateRevocationListId = pulumi.Input.asInput<String>(certificateRevocationListId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPoolId': caPoolId,
      'certificateAuthorityId': certificateAuthorityId,
      'certificateRevocationListId': certificateRevocationListId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs(
      caPoolId: pulumi.Output.create<String>(map['caPoolId'] as String),
      certificateAuthorityId: pulumi.Output.create<String>(map['certificateAuthorityId'] as String),
      certificateRevocationListId: pulumi.Output.create<String>(map['certificateRevocationListId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

