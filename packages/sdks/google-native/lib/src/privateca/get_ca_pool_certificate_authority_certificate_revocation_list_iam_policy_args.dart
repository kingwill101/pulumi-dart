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
    required this.caPoolId,
    required this.certificateAuthorityId,
    required this.certificateRevocationListId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

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

  factory GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs(
      caPoolId: pulumi.Input.fromValue(map['caPoolId'] as String),
      certificateAuthorityId: pulumi.Input.fromValue(
        map['certificateAuthorityId'] as String,
      ),
      certificateRevocationListId: pulumi.Input.fromValue(
        map['certificateRevocationListId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
