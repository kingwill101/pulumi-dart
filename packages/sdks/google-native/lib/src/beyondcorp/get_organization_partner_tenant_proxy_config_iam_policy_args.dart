// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1_get_organization_partner_tenant_proxy_config_iam_policy_args_doc}
/// Arguments for getOrganizationPartnerTenantProxyConfigIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_get_organization_partner_tenant_proxy_config_iam_policy_args_doc}
class GetOrganizationPartnerTenantProxyConfigIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;
  final pulumi.Input<String> proxyConfigId;

  /// Creates a new [GetOrganizationPartnerTenantProxyConfigIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [organizationId] Required.
  /// [partnerTenantId] Required.
  /// [proxyConfigId] Required.
  GetOrganizationPartnerTenantProxyConfigIamPolicyArgs({
    this.optionsRequestedPolicyVersion,
    required this.organizationId,
    required this.partnerTenantId,
    required this.proxyConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'organizationId': organizationId,
      'partnerTenantId': partnerTenantId,
      'proxyConfigId': proxyConfigId,
    };
  }

  factory GetOrganizationPartnerTenantProxyConfigIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPartnerTenantProxyConfigIamPolicyArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      organizationId: (map['organizationId'] as String).input(),
      partnerTenantId: (map['partnerTenantId'] as String).input(),
      proxyConfigId: (map['proxyConfigId'] as String).input(),
    );
  }
}

