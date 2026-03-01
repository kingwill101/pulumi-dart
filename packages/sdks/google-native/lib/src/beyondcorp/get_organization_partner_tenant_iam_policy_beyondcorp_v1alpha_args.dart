// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_organization_partner_tenant_iam_policy_beyondcorp_v1alpha_args_doc}
/// Arguments for getOrganizationPartnerTenantIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_organization_partner_tenant_iam_policy_beyondcorp_v1alpha_args_doc}
class GetOrganizationPartnerTenantIamPolicyBeyondcorpV1alphaArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;

  /// Creates a new [GetOrganizationPartnerTenantIamPolicyBeyondcorpV1alphaArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [organizationId] Required.
  /// [partnerTenantId] Required.
  GetOrganizationPartnerTenantIamPolicyBeyondcorpV1alphaArgs({
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> partnerTenantId,
  }) :
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      partnerTenantId = pulumi.Input.asInput<String>(partnerTenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'organizationId': organizationId,
      'partnerTenantId': partnerTenantId,
    };
  }

  factory GetOrganizationPartnerTenantIamPolicyBeyondcorpV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPartnerTenantIamPolicyBeyondcorpV1alphaArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      partnerTenantId: pulumi.Output.create<String>(map['partnerTenantId'] as String),
    );
  }
}

