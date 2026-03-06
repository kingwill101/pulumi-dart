// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_conditional_cases.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message.dart';

/// The list of messages or conditional cases to activate for this case.
class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent {
  /// Additional cases to be evaluated.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases>? additionalCases;
  /// Returned message.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1ResponseMessage>? message;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent].
  /// [additionalCases] Additional cases to be evaluated.
  /// [message] Returned message.
  const GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent({
    this.additionalCases,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCases': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases, Map<String, dynamic>>(additionalCases, (value) => value.toMap()),
      'message': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1ResponseMessage, Map<String, dynamic>>(message, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent(
      additionalCases: (() { final guardedValue = map['additionalCases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3beta1ResponseMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

