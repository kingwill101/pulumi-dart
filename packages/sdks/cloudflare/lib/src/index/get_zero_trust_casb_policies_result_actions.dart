// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_casb_policies_result_actions_remediation_type.dart';
import 'get_zero_trust_casb_policies_result_actions_webhook_config.dart';

class GetZeroTrustCasbPoliciesResultActions {
  /// List of remediation types that will be executed.
  final pulumi.Input<List<GetZeroTrustCasbPoliciesResultActionsRemediationType>> remediationTypes;
  /// List of webhook configurations that will be triggered.
  final pulumi.Input<List<GetZeroTrustCasbPoliciesResultActionsWebhookConfig>> webhookConfigs;

  /// Creates a new [GetZeroTrustCasbPoliciesResultActions].
  /// [remediationTypes] List of remediation types that will be executed.
  /// [webhookConfigs] List of webhook configurations that will be triggered.
  const GetZeroTrustCasbPoliciesResultActions({
    required this.remediationTypes,
    required this.webhookConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remediationTypes': pulumi.Input.mapInputValue<List<GetZeroTrustCasbPoliciesResultActionsRemediationType>, List<Map<String, dynamic>>>(remediationTypes, (value) => pulumi.Input.encodeList<GetZeroTrustCasbPoliciesResultActionsRemediationType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webhookConfigs': pulumi.Input.mapInputValue<List<GetZeroTrustCasbPoliciesResultActionsWebhookConfig>, List<Map<String, dynamic>>>(webhookConfigs, (value) => pulumi.Input.encodeList<GetZeroTrustCasbPoliciesResultActionsWebhookConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustCasbPoliciesResultActions.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbPoliciesResultActions(
      remediationTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustCasbPoliciesResultActionsRemediationType>(map['remediationTypes']!, (value) => GetZeroTrustCasbPoliciesResultActionsRemediationType.fromMap((value as Map).cast<String, dynamic>()))),
      webhookConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustCasbPoliciesResultActionsWebhookConfig>(map['webhookConfigs']!, (value) => GetZeroTrustCasbPoliciesResultActionsWebhookConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
