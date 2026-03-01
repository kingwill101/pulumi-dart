// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_event_handler_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_response.dart';

/// Configuration for how the filling of a parameter should be handled.
class GoogleCloudDialogflowCxV3beta1FormParameterFillBehaviorResponse {
  /// The fulfillment to provide the initial prompt that the agent can present to the user in order to fill the parameter.
  final GoogleCloudDialogflowCxV3beta1FulfillmentResponse initialPromptFulfillment;
  /// The handlers for parameter-level events, used to provide reprompt for the parameter or transition to a different page/flow. The supported events are: * `sys.no-match-`, where N can be from 1 to 6 * `sys.no-match-default` * `sys.no-input-`, where N can be from 1 to 6 * `sys.no-input-default` * `sys.invalid-parameter` `initial_prompt_fulfillment` provides the first prompt for the parameter. If the user's response does not fill the parameter, a no-match/no-input event will be triggered, and the fulfillment associated with the `sys.no-match-1`/`sys.no-input-1` handler (if defined) will be called to provide a prompt. The `sys.no-match-2`/`sys.no-input-2` handler (if defined) will respond to the next no-match/no-input event, and so on. A `sys.no-match-default` or `sys.no-input-default` handler will be used to handle all following no-match/no-input events after all numbered no-match/no-input handlers for the parameter are consumed. A `sys.invalid-parameter` handler can be defined to handle the case where the parameter values have been `invalidated` by webhook. For example, if the user's response fill the parameter, however the parameter was invalidated by webhook, the fulfillment associated with the `sys.invalid-parameter` handler (if defined) will be called to provide a prompt. If the event handler for the corresponding event can't be found on the parameter, `initial_prompt_fulfillment` will be re-prompted.
  final List<GoogleCloudDialogflowCxV3beta1EventHandlerResponse> repromptEventHandlers;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1FormParameterFillBehaviorResponse].
  /// [initialPromptFulfillment] The fulfillment to provide the initial prompt that the agent can present to the user in order to fill the parameter.
  /// [repromptEventHandlers] The handlers for parameter-level events, used to provide reprompt for the parameter or transition to a different page/flow. The supported events are: * `sys.no-match-`, where N can be from 1 to 6 * `sys.no-match-default` * `sys.no-input-`, where N can be from 1 to 6 * `sys.no-input-default` * `sys.invalid-parameter` `initial_prompt_fulfillment` provides the first prompt for the parameter. If the user's response does not fill the parameter, a no-match/no-input event will be triggered, and the fulfillment associated with the `sys.no-match-1`/`sys.no-input-1` handler (if defined) will be called to provide a prompt. The `sys.no-match-2`/`sys.no-input-2` handler (if defined) will respond to the next no-match/no-input event, and so on. A `sys.no-match-default` or `sys.no-input-default` handler will be used to handle all following no-match/no-input events after all numbered no-match/no-input handlers for the parameter are consumed. A `sys.invalid-parameter` handler can be defined to handle the case where the parameter values have been `invalidated` by webhook. For example, if the user's response fill the parameter, however the parameter was invalidated by webhook, the fulfillment associated with the `sys.invalid-parameter` handler (if defined) will be called to provide a prompt. If the event handler for the corresponding event can't be found on the parameter, `initial_prompt_fulfillment` will be re-prompted.
  GoogleCloudDialogflowCxV3beta1FormParameterFillBehaviorResponse({
    required this.initialPromptFulfillment,
    required this.repromptEventHandlers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialPromptFulfillment': initialPromptFulfillment.toMap(),
      'repromptEventHandlers': pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1EventHandlerResponse, Map<String, dynamic>>(repromptEventHandlers, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1FormParameterFillBehaviorResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FormParameterFillBehaviorResponse(
      initialPromptFulfillment: GoogleCloudDialogflowCxV3beta1FulfillmentResponse.fromMap((map['initialPromptFulfillment'] as Map).cast<String, dynamic>()),
      repromptEventHandlers: pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1EventHandlerResponse>(map['repromptEventHandlers'], (value) => GoogleCloudDialogflowCxV3beta1EventHandlerResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

