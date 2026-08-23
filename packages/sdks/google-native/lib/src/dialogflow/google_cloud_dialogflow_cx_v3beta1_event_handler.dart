// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment.dart';

/// An event handler specifies an event that can be handled during a session. When the specified event happens, the following actions are taken in order: * If there is a `trigger_fulfillment` associated with the event, it will be called. * If there is a `target_page` associated with the event, the session will transition into the specified page. * If there is a `target_flow` associated with the event, the session will transition into the specified flow.
class GoogleCloudDialogflowCxV3beta1EventHandler {
  /// The name of the event to handle.
  final pulumi.Input<String> event;
  /// The target flow to transition to. Format: `projects//locations//agents//flows/`.
  final pulumi.Input<String>? targetFlow;
  /// The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  final pulumi.Input<String>? targetPage;
  /// The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1Fulfillment>? triggerFulfillment;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1EventHandler].
  /// [event] The name of the event to handle.
  /// [targetFlow] The target flow to transition to. Format: `projects//locations//agents//flows/`.
  /// [targetPage] The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  /// [triggerFulfillment] The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks.
  const GoogleCloudDialogflowCxV3beta1EventHandler({
    required this.event,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'event': event,
      'targetFlow': ?targetFlow,
      'targetPage': ?targetPage,
      'triggerFulfillment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1Fulfillment, Map<String, dynamic>>(triggerFulfillment, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1EventHandler.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1EventHandler(
      event: pulumi.Input.fromValue(map['event'] as String),
      targetFlow: (() { final guardedValue = map['targetFlow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetPage: (() { final guardedValue = map['targetPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerFulfillment: (() { final guardedValue = map['triggerFulfillment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3beta1Fulfillment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
