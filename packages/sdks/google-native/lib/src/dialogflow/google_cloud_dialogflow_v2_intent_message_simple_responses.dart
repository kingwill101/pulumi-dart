// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_simple_response.dart';

/// The collection of simple response candidates. This message in `QueryResult.fulfillment_messages` and `WebhookResponse.fulfillment_messages` should contain only one `SimpleResponse`.
class GoogleCloudDialogflowV2IntentMessageSimpleResponses {
  /// The list of simple responses.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageSimpleResponse>> simpleResponses;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageSimpleResponses].
  /// [simpleResponses] The list of simple responses.
  const GoogleCloudDialogflowV2IntentMessageSimpleResponses({
    required this.simpleResponses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleResponses': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2IntentMessageSimpleResponse>, List<Map<String, dynamic>>>(simpleResponses, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageSimpleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageSimpleResponses(
      simpleResponses: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageSimpleResponse>(map['simpleResponses']!, (value) => GoogleCloudDialogflowV2IntentMessageSimpleResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

