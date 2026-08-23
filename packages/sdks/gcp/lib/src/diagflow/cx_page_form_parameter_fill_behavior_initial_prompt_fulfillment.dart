// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_form_parameter_fill_behavior_initial_prompt_fulfillment_conditional_case.dart';
import 'cx_page_form_parameter_fill_behavior_initial_prompt_fulfillment_message.dart';
import 'cx_page_form_parameter_fill_behavior_initial_prompt_fulfillment_set_parameter_action.dart';

class CxPageFormParameterFillBehaviorInitialPromptFulfillment {
  /// Conditional cases for this fulfillment.
  /// Structure is documented below.
  final pulumi.Input<List<CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCase>>? conditionalCases;
  /// The list of rich message responses to present to the user.
  /// Structure is documented below.
  final pulumi.Input<List<CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessage>>? messages;
  /// Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  final pulumi.Input<bool>? returnPartialResponses;
  /// Set parameter values before executing the webhook.
  /// Structure is documented below.
  final pulumi.Input<List<CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterAction>>? setParameterActions;
  /// The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified.
  final pulumi.Input<String>? tag;
  /// The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;.
  final pulumi.Input<String>? webhook;

  /// Creates a new [CxPageFormParameterFillBehaviorInitialPromptFulfillment].
  /// [conditionalCases] Conditional cases for this fulfillment.
  /// [messages] The list of rich message responses to present to the user.
  /// [returnPartialResponses] Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  /// [setParameterActions] Set parameter values before executing the webhook.
  /// [tag] The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified.
  /// [webhook] The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;.
  const CxPageFormParameterFillBehaviorInitialPromptFulfillment({
    this.conditionalCases,
    this.messages,
    this.returnPartialResponses,
    this.setParameterActions,
    this.tag,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionalCases': ?pulumi.Input.mapOptionalInputValue<List<CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCase>, List<Map<String, dynamic>>>(conditionalCases, (value) => pulumi.Input.encodeList<CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'messages': ?pulumi.Input.mapOptionalInputValue<List<CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'returnPartialResponses': ?returnPartialResponses,
      'setParameterActions': ?pulumi.Input.mapOptionalInputValue<List<CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterAction>, List<Map<String, dynamic>>>(setParameterActions, (value) => pulumi.Input.encodeList<CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tag': ?tag,
      'webhook': ?webhook,
    };
  }

  factory CxPageFormParameterFillBehaviorInitialPromptFulfillment.fromMap(Map<String, dynamic> map) {
    return CxPageFormParameterFillBehaviorInitialPromptFulfillment(
      conditionalCases: (() { final guardedValue = map['conditionalCases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCase>(guardedValue, (value) => CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCase.fromMap((value as Map).cast<String, dynamic>()))); })(),
      messages: (() { final guardedValue = map['messages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessage>(guardedValue, (value) => CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      returnPartialResponses: (() { final guardedValue = map['returnPartialResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      setParameterActions: (() { final guardedValue = map['setParameterActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterAction>(guardedValue, (value) => CxPageFormParameterFillBehaviorInitialPromptFulfillmentSetParameterAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhook: (() { final guardedValue = map['webhook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
