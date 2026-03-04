// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_event_handler_trigger_fulfillment_conditional_case.dart';
import 'cx_page_event_handler_trigger_fulfillment_message.dart';
import 'cx_page_event_handler_trigger_fulfillment_set_parameter_action.dart';

class CxPageEventHandlerTriggerFulfillment {
  /// Conditional cases for this fulfillment.
  /// Structure is documented below.
  final pulumi.Input<List<CxPageEventHandlerTriggerFulfillmentConditionalCase>>?
  conditionalCases;

  /// The list of rich message responses to present to the user.
  /// Structure is documented below.
  final pulumi.Input<List<CxPageEventHandlerTriggerFulfillmentMessage>>?
  messages;

  /// Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  final pulumi.Input<bool>? returnPartialResponses;

  /// Set parameter values before executing the webhook.
  /// Structure is documented below.
  final pulumi.Input<
    List<CxPageEventHandlerTriggerFulfillmentSetParameterAction>
  >?
  setParameterActions;

  /// The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified.
  final pulumi.Input<String>? tag;

  /// The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;.
  final pulumi.Input<String>? webhook;

  /// Creates a new [CxPageEventHandlerTriggerFulfillment].
  /// [conditionalCases] Conditional cases for this fulfillment.
  /// [messages] The list of rich message responses to present to the user.
  /// [returnPartialResponses] Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.
  /// [setParameterActions] Set parameter values before executing the webhook.
  /// [tag] The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified.
  /// [webhook] The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;.
  CxPageEventHandlerTriggerFulfillment({
    this.conditionalCases,
    this.messages,
    this.returnPartialResponses,
    this.setParameterActions,
    this.tag,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionalCases':
          ?pulumi.Input.mapOptionalInputValue<
            List<CxPageEventHandlerTriggerFulfillmentConditionalCase>,
            List<Map<String, dynamic>>
          >(
            conditionalCases,
            (value) =>
                pulumi.Input.encodeList<
                  CxPageEventHandlerTriggerFulfillmentConditionalCase,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'messages':
          ?pulumi.Input.mapOptionalInputValue<
            List<CxPageEventHandlerTriggerFulfillmentMessage>,
            List<Map<String, dynamic>>
          >(
            messages,
            (value) =>
                pulumi.Input.encodeList<
                  CxPageEventHandlerTriggerFulfillmentMessage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'returnPartialResponses': ?returnPartialResponses,
      'setParameterActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<CxPageEventHandlerTriggerFulfillmentSetParameterAction>,
            List<Map<String, dynamic>>
          >(
            setParameterActions,
            (value) =>
                pulumi.Input.encodeList<
                  CxPageEventHandlerTriggerFulfillmentSetParameterAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tag': ?tag,
      'webhook': ?webhook,
    };
  }

  factory CxPageEventHandlerTriggerFulfillment.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxPageEventHandlerTriggerFulfillment(
      conditionalCases: (() {
        final guardedValue = map['conditionalCases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            CxPageEventHandlerTriggerFulfillmentConditionalCase
          >(
            guardedValue,
            (value) =>
                CxPageEventHandlerTriggerFulfillmentConditionalCase.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      messages: (() {
        final guardedValue = map['messages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CxPageEventHandlerTriggerFulfillmentMessage>(
            guardedValue,
            (value) => CxPageEventHandlerTriggerFulfillmentMessage.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      returnPartialResponses: (() {
        final guardedValue = map['returnPartialResponses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      setParameterActions: (() {
        final guardedValue = map['setParameterActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            CxPageEventHandlerTriggerFulfillmentSetParameterAction
          >(
            guardedValue,
            (value) =>
                CxPageEventHandlerTriggerFulfillmentSetParameterAction.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      tag: (() {
        final guardedValue = map['tag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webhook: (() {
        final guardedValue = map['webhook'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
