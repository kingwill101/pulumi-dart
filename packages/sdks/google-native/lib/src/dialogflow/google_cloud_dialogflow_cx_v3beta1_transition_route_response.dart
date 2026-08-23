// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_response.dart';

/// A transition route specifies a intent that can be matched and/or a data condition that can be evaluated during a session. When a specified transition is matched, the following actions are taken in order: * If there is a `trigger_fulfillment` associated with the transition, it will be called. * If there is a `target_page` associated with the transition, the session will transition into the specified page. * If there is a `target_flow` associated with the transition, the session will transition into the specified flow.
class GoogleCloudDialogflowCxV3beta1TransitionRouteResponse {
  /// The condition to evaluate against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition). At least one of `intent` or `condition` must be specified. When both `intent` and `condition` are specified, the transition can only happen when both are fulfilled.
  final pulumi.Input<String> condition;
  /// Optional. The description of the transition route. The maximum length is 500 characters.
  final pulumi.Input<String> description;
  /// The unique identifier of an Intent. Format: `projects//locations//agents//intents/`. Indicates that the transition can only happen when the given intent is matched. At least one of `intent` or `condition` must be specified. When both `intent` and `condition` are specified, the transition can only happen when both are fulfilled.
  final pulumi.Input<String> intent;
  /// The unique identifier of this transition route.
  final pulumi.Input<String> name;
  /// The target flow to transition to. Format: `projects//locations//agents//flows/`.
  final pulumi.Input<String> targetFlow;
  /// The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  final pulumi.Input<String> targetPage;
  /// The fulfillment to call when the condition is satisfied. At least one of `trigger_fulfillment` and `target` must be specified. When both are defined, `trigger_fulfillment` is executed first.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1FulfillmentResponse> triggerFulfillment;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1TransitionRouteResponse].
  /// [condition] The condition to evaluate against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition). At least one of `intent` or `condition` must be specified. When both `intent` and `condition` are specified, the transition can only happen when both are fulfilled.
  /// [description] Optional. The description of the transition route. The maximum length is 500 characters.
  /// [intent] The unique identifier of an Intent. Format: `projects//locations//agents//intents/`. Indicates that the transition can only happen when the given intent is matched. At least one of `intent` or `condition` must be specified. When both `intent` and `condition` are specified, the transition can only happen when both are fulfilled.
  /// [name] The unique identifier of this transition route.
  /// [targetFlow] The target flow to transition to. Format: `projects//locations//agents//flows/`.
  /// [targetPage] The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  /// [triggerFulfillment] The fulfillment to call when the condition is satisfied. At least one of `trigger_fulfillment` and `target` must be specified. When both are defined, `trigger_fulfillment` is executed first.
  const GoogleCloudDialogflowCxV3beta1TransitionRouteResponse({
    required this.condition,
    required this.description,
    required this.intent,
    required this.name,
    required this.targetFlow,
    required this.targetPage,
    required this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'description': description,
      'intent': intent,
      'name': name,
      'targetFlow': targetFlow,
      'targetPage': targetPage,
      'triggerFulfillment': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3beta1FulfillmentResponse, Map<String, dynamic>>(triggerFulfillment, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1TransitionRouteResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1TransitionRouteResponse(
      condition: pulumi.Input.fromValue(map['condition'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      intent: pulumi.Input.fromValue(map['intent'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      targetFlow: pulumi.Input.fromValue(map['targetFlow'] as String),
      targetPage: pulumi.Input.fromValue(map['targetPage'] as String),
      triggerFulfillment: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3beta1FulfillmentResponse.fromMap((map['triggerFulfillment']! as Map).cast<String, dynamic>())),
    );
  }
}
