// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_casb_policy_actions_remediation_type.dart';
import 'get_zero_trust_casb_policy_actions_webhook_config.dart';

class GetZeroTrustCasbPolicyActions {
  /// List of remediation types that will be executed.
  final pulumi.Input<List<GetZeroTrustCasbPolicyActionsRemediationType>> remediationTypes;
  /// List of webhook configurations that will be triggered.
  final pulumi.Input<List<GetZeroTrustCasbPolicyActionsWebhookConfig>> webhookConfigs;

  /// Creates a new [GetZeroTrustCasbPolicyActions].
  /// [remediationTypes] List of remediation types that will be executed.
  /// [webhookConfigs] List of webhook configurations that will be triggered.
  const GetZeroTrustCasbPolicyActions({
    required this.remediationTypes,
    required this.webhookConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remediationTypes': pulumi.Input.mapInputValue<List<GetZeroTrustCasbPolicyActionsRemediationType>, List<Map<String, dynamic>>>(remediationTypes, (value) => pulumi.Input.encodeList<GetZeroTrustCasbPolicyActionsRemediationType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webhookConfigs': pulumi.Input.mapInputValue<List<GetZeroTrustCasbPolicyActionsWebhookConfig>, List<Map<String, dynamic>>>(webhookConfigs, (value) => pulumi.Input.encodeList<GetZeroTrustCasbPolicyActionsWebhookConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustCasbPolicyActions.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbPolicyActions(
      remediationTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustCasbPolicyActionsRemediationType>(map['remediationTypes']!, (value) => GetZeroTrustCasbPolicyActionsRemediationType.fromMap((value as Map).cast<String, dynamic>()))),
      webhookConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustCasbPolicyActionsWebhookConfig>(map['webhookConfigs']!, (value) => GetZeroTrustCasbPolicyActionsWebhookConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
