// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_fulfillment_conditional_cases_response.dart';
import 'google_cloud_dialogflow_cx_v3_response_message_response.dart';

/// The list of messages or conditional cases to activate for this case.
class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse {
  /// Additional cases to be evaluated.
  final pulumi.Input<
    GoogleCloudDialogflowCxV3FulfillmentConditionalCasesResponse
  >
  additionalCases;

  /// Returned message.
  final pulumi.Input<GoogleCloudDialogflowCxV3ResponseMessageResponse> message;

  /// Creates a new [GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse].
  /// [additionalCases] Additional cases to be evaluated.
  /// [message] Returned message.
  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse({
    required this.additionalCases,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCases':
          pulumi.Input.mapInputValue<
            GoogleCloudDialogflowCxV3FulfillmentConditionalCasesResponse,
            Map<String, dynamic>
          >(additionalCases, (value) => value.toMap()),
      'message':
          pulumi.Input.mapInputValue<
            GoogleCloudDialogflowCxV3ResponseMessageResponse,
            Map<String, dynamic>
          >(message, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse(
      additionalCases: pulumi.Input.fromValue(
        GoogleCloudDialogflowCxV3FulfillmentConditionalCasesResponse.fromMap(
          (map['additionalCases']! as Map).cast<String, dynamic>(),
        ),
      ),
      message: pulumi.Input.fromValue(
        GoogleCloudDialogflowCxV3ResponseMessageResponse.fromMap(
          (map['message']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
