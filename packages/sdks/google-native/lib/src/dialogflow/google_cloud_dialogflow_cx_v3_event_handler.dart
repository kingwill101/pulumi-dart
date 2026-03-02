// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_fulfillment.dart';

/// An event handler specifies an event that can be handled during a session. When the specified event happens, the following actions are taken in order: * If there is a `trigger_fulfillment` associated with the event, it will be called. * If there is a `target_page` associated with the event, the session will transition into the specified page. * If there is a `target_flow` associated with the event, the session will transition into the specified flow.
class GoogleCloudDialogflowCxV3EventHandler {
  /// The name of the event to handle.
  final pulumi.Input<String> event;
  /// The target flow to transition to. Format: `projects//locations//agents//flows/`.
  final pulumi.Input<String>? targetFlow;
  /// The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  final pulumi.Input<String>? targetPage;
  /// The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks.
  final pulumi.Input<GoogleCloudDialogflowCxV3Fulfillment>? triggerFulfillment;

  /// Creates a new [GoogleCloudDialogflowCxV3EventHandler].
  /// [event] The name of the event to handle.
  /// [targetFlow] The target flow to transition to. Format: `projects//locations//agents//flows/`.
  /// [targetPage] The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  /// [triggerFulfillment] The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks.
  GoogleCloudDialogflowCxV3EventHandler({
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
      'triggerFulfillment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3Fulfillment, Map<String, dynamic>>(triggerFulfillment, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3EventHandler.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EventHandler(
      event: (map['event'] as String).input(),
      targetFlow: map['targetFlow'] == null ? null : (map['targetFlow']! as String).input(),
      targetPage: map['targetPage'] == null ? null : (map['targetPage']! as String).input(),
      triggerFulfillment: map['triggerFulfillment'] == null ? null : (GoogleCloudDialogflowCxV3Fulfillment.fromMap((map['triggerFulfillment']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

