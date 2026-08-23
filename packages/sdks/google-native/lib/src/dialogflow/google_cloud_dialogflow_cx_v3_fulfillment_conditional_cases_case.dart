// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_fulfillment_conditional_cases_case_case_content.dart';

/// Each case has a Boolean condition. When it is evaluated to be True, the corresponding messages will be selected and evaluated recursively.
class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase {
  /// A list of case content.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>>? caseContent;
  /// The condition to activate and select this case. Empty means the condition is always true. The condition is evaluated against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  final pulumi.Input<String>? condition;

  /// Creates a new [GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase].
  /// [caseContent] A list of case content.
  /// [condition] The condition to activate and select this case. Empty means the condition is always true. The condition is evaluated against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  const GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase({
    this.caseContent,
    this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseContent': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>, List<Map<String, dynamic>>>(caseContent, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'condition': ?condition,
    };
  }

  factory GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase(
      caseContent: (() { final guardedValue = map['caseContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>(guardedValue, (value) => GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent.fromMap((value as Map).cast<String, dynamic>()))); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
