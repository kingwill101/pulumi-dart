// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_fulfillment_conditional_cases_case_case_content_response.dart';

/// Each case has a Boolean condition. When it is evaluated to be True, the corresponding messages will be selected and evaluated recursively.
class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseResponse {
  /// A list of case content.
  final pulumi.Input<
    List<
      GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse
    >
  >
  caseContent;

  /// The condition to activate and select this case. Empty means the condition is always true. The condition is evaluated against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  final pulumi.Input<String> condition;

  /// Creates a new [GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseResponse].
  /// [caseContent] A list of case content.
  /// [condition] The condition to activate and select this case. Empty means the condition is always true. The condition is evaluated against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseResponse({
    required this.caseContent,
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseContent':
          pulumi.Input.mapInputValue<
            List<
              GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse
            >,
            List<Map<String, dynamic>>
          >(
            caseContent,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'condition': condition,
    };
  }

  factory GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseResponse(
      caseContent: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse
        >(
          map['caseContent']!,
          (value) =>
              GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      condition: pulumi.Input.fromValue(map['condition'] as String),
    );
  }
}
