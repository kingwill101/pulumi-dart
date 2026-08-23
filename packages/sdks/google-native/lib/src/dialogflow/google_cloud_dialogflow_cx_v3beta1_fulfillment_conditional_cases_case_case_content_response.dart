// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_conditional_cases_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_response.dart';

/// The list of messages or conditional cases to activate for this case.
class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContentResponse {
  /// Additional cases to be evaluated.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse> additionalCases;
  /// Returned message.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1ResponseMessageResponse> message;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContentResponse].
  /// [additionalCases] Additional cases to be evaluated.
  /// [message] Returned message.
  const GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContentResponse({
    required this.additionalCases,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCases': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse, Map<String, dynamic>>(additionalCases, (value) => value.toMap()),
      'message': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3beta1ResponseMessageResponse, Map<String, dynamic>>(message, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContentResponse(
      additionalCases: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse.fromMap((map['additionalCases']! as Map).cast<String, dynamic>())),
      message: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3beta1ResponseMessageResponse.fromMap((map['message']! as Map).cast<String, dynamic>())),
    );
  }
}
