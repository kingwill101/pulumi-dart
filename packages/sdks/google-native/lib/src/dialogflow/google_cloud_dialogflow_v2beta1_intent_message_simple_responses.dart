// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_simple_response.dart';

/// The collection of simple response candidates. This message in `QueryResult.fulfillment_messages` and `WebhookResponse.fulfillment_messages` should contain only one `SimpleResponse`.
class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses {
  /// The list of simple responses.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>> simpleResponses;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses].
  /// [simpleResponses] The list of simple responses.
  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses({
    required this.simpleResponses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleResponses': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>, List<Map<String, dynamic>>>(simpleResponses, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(
      simpleResponses: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>(map['simpleResponses']!, (value) => GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

