// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_simple_response_response.dart';

/// The collection of simple response candidates. This message in `QueryResult.fulfillment_messages` and `WebhookResponse.fulfillment_messages` should contain only one `SimpleResponse`.
class GoogleCloudDialogflowV2IntentMessageSimpleResponsesResponse {
  /// The list of simple responses.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse>> simpleResponses;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageSimpleResponsesResponse].
  /// [simpleResponses] The list of simple responses.
  GoogleCloudDialogflowV2IntentMessageSimpleResponsesResponse({
    required this.simpleResponses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleResponses': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse>, List<Map<String, dynamic>>>(simpleResponses, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageSimpleResponsesResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageSimpleResponsesResponse(
      simpleResponses: (pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse>(map['simpleResponses'], (value) => GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

