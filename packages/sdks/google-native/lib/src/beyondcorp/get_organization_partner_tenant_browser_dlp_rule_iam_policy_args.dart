// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1_get_organization_partner_tenant_browser_dlp_rule_iam_policy_args_doc}
/// Arguments for getOrganizationPartnerTenantBrowserDlpRuleIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_get_organization_partner_tenant_browser_dlp_rule_iam_policy_args_doc}
class GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs {
  final pulumi.Input<String> browserDlpRuleId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;

  /// Creates a new [GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs].
  /// [browserDlpRuleId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [organizationId] Required.
  /// [partnerTenantId] Required.
  const GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs({
    required this.browserDlpRuleId,
    this.optionsRequestedPolicyVersion,
    required this.organizationId,
    required this.partnerTenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'browserDlpRuleId': browserDlpRuleId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'organizationId': organizationId,
      'partnerTenantId': partnerTenantId,
    };
  }

  factory GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs(
      browserDlpRuleId: pulumi.Input.fromValue(map['browserDlpRuleId'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      partnerTenantId: pulumi.Input.fromValue(map['partnerTenantId'] as String),
    );
  }
}
