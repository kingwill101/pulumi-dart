// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_conditional_cases_case.dart';

/// A list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases {
  /// A list of cascading if-else conditions.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>>? cases;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases].
  /// [cases] A list of cascading if-else conditions.
  const GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases({
    this.cases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cases': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>, List<Map<String, dynamic>>>(cases, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(
      cases: (() { final guardedValue = map['cases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>(guardedValue, (value) => GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

