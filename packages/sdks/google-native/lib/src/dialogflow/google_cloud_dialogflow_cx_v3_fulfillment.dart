// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3_fulfillment_conditional_cases.dart';
import 'google_cloud_dialogflow_cx_v3_fulfillment_set_parameter_action.dart';
import 'google_cloud_dialogflow_cx_v3_response_message.dart';

/// A fulfillment can do one or more of the following actions at the same time: * Generate rich message responses. * Set parameter values. * Call the webhook. Fulfillments can be called at various stages in the Page or Form lifecycle. For example, when a DetectIntentRequest drives a session to enter a new page, the page's entry fulfillment can add a static response to the QueryResult in the returning DetectIntentResponse, call the webhook (for example, to load user data from a database), or both.
class GoogleCloudDialogflowCxV3Fulfillment {
  /// Hierarchical advanced settings for this fulfillment. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final pulumi.Input<GoogleCloudDialogflowCxV3AdvancedSettings>? advancedSettings;
  /// Conditional cases for this fulfillment.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3FulfillmentConditionalCases>>? conditionalCases;
  /// If the flag is true, the agent will utilize LLM to generate a text response. If LLM generation fails, the defined responses in the fulfillment will be respected. This flag is only useful for fulfillments associated with no-match event handlers.
  final pulumi.Input<bool>? enableGenerativeFallback;
  /// The list of rich message responses to present to the user.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3ResponseMessage>>? messages;
  /// Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  final pulumi.Input<bool>? returnPartialResponses;
  /// Set parameter values before executing the webhook.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>>? setParameterActions;
  /// The value of this field will be populated in the WebhookRequest `fulfillmentInfo.tag` field by Dialogflow when the associated webhook is called. The tag is typically used by the webhook service to identify which fulfillment is being called, but it could be used for other purposes. This field is required if `webhook` is specified.
  final pulumi.Input<String>? tag;
  /// The webhook to call. Format: `projects//locations//agents//webhooks/`.
  final pulumi.Input<String>? webhook;

  /// Creates a new [GoogleCloudDialogflowCxV3Fulfillment].
  /// [advancedSettings] Hierarchical advanced settings for this fulfillment. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [conditionalCases] Conditional cases for this fulfillment.
  /// [enableGenerativeFallback] If the flag is true, the agent will utilize LLM to generate a text response. If LLM generation fails, the defined responses in the fulfillment will be respected. This flag is only useful for fulfillments associated with no-match event handlers.
  /// [messages] The list of rich message responses to present to the user.
  /// [returnPartialResponses] Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  /// [setParameterActions] Set parameter values before executing the webhook.
  /// [tag] The value of this field will be populated in the WebhookRequest `fulfillmentInfo.tag` field by Dialogflow when the associated webhook is called. The tag is typically used by the webhook service to identify which fulfillment is being called, but it could be used for other purposes. This field is required if `webhook` is specified.
  /// [webhook] The webhook to call. Format: `projects//locations//agents//webhooks/`.
  GoogleCloudDialogflowCxV3Fulfillment({
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
      'advancedSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3AdvancedSettings, Map<String, dynamic>>(advancedSettings, (value) => value.toMap()),
      'conditionalCases': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3FulfillmentConditionalCases>, List<Map<String, dynamic>>>(conditionalCases, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3FulfillmentConditionalCases, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableGenerativeFallback': ?enableGenerativeFallback,
      'messages': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3ResponseMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3ResponseMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'returnPartialResponses': ?returnPartialResponses,
      'setParameterActions': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>, List<Map<String, dynamic>>>(setParameterActions, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3FulfillmentSetParameterAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tag': ?tag,
      'webhook': ?webhook,
    };
  }

  factory GoogleCloudDialogflowCxV3Fulfillment.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3Fulfillment(
      advancedSettings: (() { final guardedValue = map['advancedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3AdvancedSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditionalCases: (() { final guardedValue = map['conditionalCases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3FulfillmentConditionalCases>(guardedValue, (value) => GoogleCloudDialogflowCxV3FulfillmentConditionalCases.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableGenerativeFallback: (() { final guardedValue = map['enableGenerativeFallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      messages: (() { final guardedValue = map['messages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3ResponseMessage>(guardedValue, (value) => GoogleCloudDialogflowCxV3ResponseMessage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      returnPartialResponses: (() { final guardedValue = map['returnPartialResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      setParameterActions: (() { final guardedValue = map['setParameterActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>(guardedValue, (value) => GoogleCloudDialogflowCxV3FulfillmentSetParameterAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhook: (() { final guardedValue = map['webhook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

