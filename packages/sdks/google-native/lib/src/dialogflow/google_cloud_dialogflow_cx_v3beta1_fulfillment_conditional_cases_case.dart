// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_conditional_cases_case_case_content.dart';

/// Each case has a Boolean condition. When it is evaluated to be True, the corresponding messages will be selected and evaluated recursively.
class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase {
  /// A list of case content.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent>>? caseContent;
  /// The condition to activate and select this case. Empty means the condition is always true. The condition is evaluated against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  final pulumi.Input<String>? condition;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase].
  /// [caseContent] A list of case content.
  /// [condition] The condition to activate and select this case. Empty means the condition is always true. The condition is evaluated against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase({
    this.caseContent,
    this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseContent': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent>, List<Map<String, dynamic>>>(caseContent, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'condition': ?condition,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase(
      caseContent: map['caseContent'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent>(map['caseContent']!, (value) => GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      condition: map['condition'] == null ? null : (map['condition']! as String).input(),
    );
  }
}

