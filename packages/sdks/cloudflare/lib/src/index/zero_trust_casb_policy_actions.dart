// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_policy_actions_remediation_type.dart';
import 'zero_trust_casb_policy_actions_webhook_config.dart';

class ZeroTrustCasbPolicyActions {
  /// Remediation actions to execute (at most one).
  final pulumi.Input<List<ZeroTrustCasbPolicyActionsRemediationType>?>? remediationTypes;
  /// Webhook actions to execute.
  final pulumi.Input<List<ZeroTrustCasbPolicyActionsWebhookConfig>?>? webhookConfigs;

  /// Creates a new [ZeroTrustCasbPolicyActions].
  /// [remediationTypes] Remediation actions to execute (at most one).
  /// [webhookConfigs] Webhook actions to execute.
  const ZeroTrustCasbPolicyActions({
    this.remediationTypes,
    this.webhookConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remediationTypes': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustCasbPolicyActionsRemediationType>, List<Map<String, dynamic>>>(remediationTypes, (value) => pulumi.Input.encodeList<ZeroTrustCasbPolicyActionsRemediationType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webhookConfigs': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustCasbPolicyActionsWebhookConfig>, List<Map<String, dynamic>>>(webhookConfigs, (value) => pulumi.Input.encodeList<ZeroTrustCasbPolicyActionsWebhookConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustCasbPolicyActions.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbPolicyActions(
      remediationTypes: (() { final guardedValue = map['remediationTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustCasbPolicyActionsRemediationType>(guardedValue, (value) => ZeroTrustCasbPolicyActionsRemediationType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      webhookConfigs: (() { final guardedValue = map['webhookConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustCasbPolicyActionsWebhookConfig>(guardedValue, (value) => ZeroTrustCasbPolicyActionsWebhookConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
