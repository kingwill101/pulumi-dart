// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_knowledge_connector_settings_trigger_fulfillment_advanced_settings.dart';
import 'cx_page_knowledge_connector_settings_trigger_fulfillment_conditional_case.dart';
import 'cx_page_knowledge_connector_settings_trigger_fulfillment_message.dart';
import 'cx_page_knowledge_connector_settings_trigger_fulfillment_set_parameter_action.dart';

class CxPageKnowledgeConnectorSettingsTriggerFulfillment {
  /// Hierarchical advanced settings for agent/flow/page/fulfillment/parameter. Settings exposed at lower level overrides the settings exposed at higher level. Overriding occurs at the sub-setting level. For example, the playbackInterruptionSettings at fulfillment level only overrides the playbackInterruptionSettings at the agent level, leaving other settings at the agent level unchanged.
  /// DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel.
  /// Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
  /// Structure is documented below.
  final pulumi.Input<CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings>? advancedSettings;
  /// Conditional cases for this fulfillment.
  /// Structure is documented below.
  final pulumi.Input<List<CxPageKnowledgeConnectorSettingsTriggerFulfillmentConditionalCase>>? conditionalCases;
  /// If the flag is true, the agent will utilize LLM to generate a text response. If LLM generation fails, the defined responses in the fulfillment will be respected. This flag is only useful for fulfillments associated with no-match event handlers.
  final pulumi.Input<bool>? enableGenerativeFallback;
  /// The list of rich message responses to present to the user.
  /// Structure is documented below.
  final pulumi.Input<List<CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessage>>? messages;
  /// Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  final pulumi.Input<bool>? returnPartialResponses;
  /// Set parameter values before executing the webhook.
  /// Structure is documented below.
  final pulumi.Input<List<CxPageKnowledgeConnectorSettingsTriggerFulfillmentSetParameterAction>>? setParameterActions;
  /// The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified.
  final pulumi.Input<String>? tag;
  /// The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>.
  final pulumi.Input<String>? webhook;

  /// Creates a new [CxPageKnowledgeConnectorSettingsTriggerFulfillment].
  /// [advancedSettings] Hierarchical advanced settings for agent/flow/page/fulfillment/parameter. Settings exposed at lower level overrides the settings exposed at higher level. Overriding occurs at the sub-setting level. For example, the playbackInterruptionSettings at fulfillment level only overrides the playbackInterruptionSettings at the agent level, leaving other settings at the agent level unchanged.
  /// [conditionalCases] Conditional cases for this fulfillment.
  /// [enableGenerativeFallback] If the flag is true, the agent will utilize LLM to generate a text response. If LLM generation fails, the defined responses in the fulfillment will be respected. This flag is only useful for fulfillments associated with no-match event handlers.
  /// [messages] The list of rich message responses to present to the user.
  /// [returnPartialResponses] Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  /// [setParameterActions] Set parameter values before executing the webhook.
  /// [tag] The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified.
  /// [webhook] The webhook to call. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>.
  CxPageKnowledgeConnectorSettingsTriggerFulfillment({
    this.advancedSettings,
    this.conditionalCases,
    this.enableGenerativeFallback,
    this.messages,
    this.returnPartialResponses,
    this.setParameterActions,
    this.tag,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?pulumi.Input.mapOptionalInputValue<CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings, Map<String, dynamic>>(advancedSettings, (value) => value.toMap()),
      'conditionalCases': ?pulumi.Input.mapOptionalInputValue<List<CxPageKnowledgeConnectorSettingsTriggerFulfillmentConditionalCase>, List<Map<String, dynamic>>>(conditionalCases, (value) => pulumi.Input.encodeList<CxPageKnowledgeConnectorSettingsTriggerFulfillmentConditionalCase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableGenerativeFallback': ?enableGenerativeFallback,
      'messages': ?pulumi.Input.mapOptionalInputValue<List<CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'returnPartialResponses': ?returnPartialResponses,
      'setParameterActions': ?pulumi.Input.mapOptionalInputValue<List<CxPageKnowledgeConnectorSettingsTriggerFulfillmentSetParameterAction>, List<Map<String, dynamic>>>(setParameterActions, (value) => pulumi.Input.encodeList<CxPageKnowledgeConnectorSettingsTriggerFulfillmentSetParameterAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tag': ?tag,
      'webhook': ?webhook,
    };
  }

  factory CxPageKnowledgeConnectorSettingsTriggerFulfillment.fromMap(Map<String, dynamic> map) {
    return CxPageKnowledgeConnectorSettingsTriggerFulfillment(
      advancedSettings: map['advancedSettings'] == null ? null : (CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings.fromMap((map['advancedSettings'] as Map).cast<String, dynamic>())).input(),
      conditionalCases: map['conditionalCases'] == null ? null : (pulumi.Input.decodeList<CxPageKnowledgeConnectorSettingsTriggerFulfillmentConditionalCase>(map['conditionalCases'], (value) => CxPageKnowledgeConnectorSettingsTriggerFulfillmentConditionalCase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableGenerativeFallback: map['enableGenerativeFallback'] == null ? null : (map['enableGenerativeFallback'] as bool).input(),
      messages: map['messages'] == null ? null : (pulumi.Input.decodeList<CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessage>(map['messages'], (value) => CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      returnPartialResponses: map['returnPartialResponses'] == null ? null : (map['returnPartialResponses'] as bool).input(),
      setParameterActions: map['setParameterActions'] == null ? null : (pulumi.Input.decodeList<CxPageKnowledgeConnectorSettingsTriggerFulfillmentSetParameterAction>(map['setParameterActions'], (value) => CxPageKnowledgeConnectorSettingsTriggerFulfillmentSetParameterAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tag: map['tag'] == null ? null : (map['tag'] as String).input(),
      webhook: map['webhook'] == null ? null : (map['webhook'] as String).input(),
    );
  }
}

