// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_simple_response_response.dart';

/// The collection of simple response candidates. This message in `QueryResult.fulfillment_messages` and `WebhookResponse.fulfillment_messages` should contain only one `SimpleResponse`.
class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponsesResponse {
  /// The list of simple responses.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponseResponse>> simpleResponses;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageSimpleResponsesResponse].
  /// [simpleResponses] The list of simple responses.
  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponsesResponse({
    required this.simpleResponses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleResponses': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponseResponse>, List<Map<String, dynamic>>>(simpleResponses, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSimpleResponsesResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSimpleResponsesResponse(
      simpleResponses: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponseResponse>(map['simpleResponses']!, (value) => GoogleCloudDialogflowV2beta1IntentMessageSimpleResponseResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

