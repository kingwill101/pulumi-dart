// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_form_parameter_fill_behavior_reprompt_event_handler_trigger_fulfillment.dart';

class CxPageFormParameterFillBehaviorRepromptEventHandler {
  /// The name of the event to handle.
  final pulumi.Input<String>? event;

  /// (Output)
  /// The unique identifier of this event handler.
  final pulumi.Input<String>? name;

  /// The target flow to transition to.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;.
  final pulumi.Input<String>? targetFlow;

  /// The target page to transition to.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;.
  final pulumi.Input<String>? targetPage;

  /// The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks.
  /// Structure is documented below.
  final pulumi.Input<
    CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillment
  >?
  triggerFulfillment;

  /// Creates a new [CxPageFormParameterFillBehaviorRepromptEventHandler].
  /// [event] The name of the event to handle.
  /// [name] (Output)
  /// [targetFlow] The target flow to transition to.
  /// [targetPage] The target page to transition to.
  /// [triggerFulfillment] The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks.
  CxPageFormParameterFillBehaviorRepromptEventHandler({
    this.event,
    this.name,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'event': ?event,
      'name': ?name,
      'targetFlow': ?targetFlow,
      'targetPage': ?targetPage,
      'triggerFulfillment':
          ?pulumi.Input.mapOptionalInputValue<
            CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillment,
            Map<String, dynamic>
          >(triggerFulfillment, (value) => value.toMap()),
    };
  }

  factory CxPageFormParameterFillBehaviorRepromptEventHandler.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxPageFormParameterFillBehaviorRepromptEventHandler(
      event: (() {
        final guardedValue = map['event'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetFlow: (() {
        final guardedValue = map['targetFlow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetPage: (() {
        final guardedValue = map['targetPage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      triggerFulfillment: (() {
        final guardedValue = map['triggerFulfillment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillment.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
