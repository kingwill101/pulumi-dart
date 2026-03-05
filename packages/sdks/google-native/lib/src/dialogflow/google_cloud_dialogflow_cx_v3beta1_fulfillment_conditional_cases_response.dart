// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_conditional_cases_case_response.dart';

/// A list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse {
  /// A list of cascading if-else conditions.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseResponse>> cases;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse].
  /// [cases] A list of cascading if-else conditions.
  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse({
    required this.cases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cases': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseResponse>, List<Map<String, dynamic>>>(cases, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse(
      cases: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseResponse>(map['cases']!, (value) => GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

