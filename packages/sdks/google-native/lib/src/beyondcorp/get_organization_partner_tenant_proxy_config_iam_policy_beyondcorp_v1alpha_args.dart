// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_organization_partner_tenant_proxy_config_iam_policy_beyondcorp_v1alpha_args_doc}
/// Arguments for getOrganizationPartnerTenantProxyConfigIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_organization_partner_tenant_proxy_config_iam_policy_beyondcorp_v1alpha_args_doc}
class GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;
  final pulumi.Input<String> proxyConfigId;

  /// Creates a new [GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [organizationId] Required.
  /// [partnerTenantId] Required.
  /// [proxyConfigId] Required.
  GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaArgs({
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> partnerTenantId,
    required pulumi.Output<String> proxyConfigId,
  }) :
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      partnerTenantId = pulumi.Input.asInput<String>(partnerTenantId),
      proxyConfigId = pulumi.Input.asInput<String>(proxyConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'organizationId': organizationId,
      'partnerTenantId': partnerTenantId,
      'proxyConfigId': proxyConfigId,
    };
  }

  factory GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPartnerTenantProxyConfigIamPolicyBeyondcorpV1alphaArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      partnerTenantId: pulumi.Output.create<String>(map['partnerTenantId'] as String),
      proxyConfigId: pulumi.Output.create<String>(map['proxyConfigId'] as String),
    );
  }
}

