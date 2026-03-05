// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_version_variants_response.dart';

/// Definition of the experiment.
class GoogleCloudDialogflowCxV3ExperimentDefinitionResponse {
  /// The condition defines which subset of sessions are selected for this experiment. If not specified, all sessions are eligible. E.g. "query_input.language_code=en" See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  final pulumi.Input<String> condition;
  /// The flow versions as the variants of this experiment.
  final pulumi.Input<GoogleCloudDialogflowCxV3VersionVariantsResponse> versionVariants;

  /// Creates a new [GoogleCloudDialogflowCxV3ExperimentDefinitionResponse].
  /// [condition] The condition defines which subset of sessions are selected for this experiment. If not specified, all sessions are eligible. E.g. "query_input.language_code=en" See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  /// [versionVariants] The flow versions as the variants of this experiment.
  GoogleCloudDialogflowCxV3ExperimentDefinitionResponse({
    required this.condition,
    required this.versionVariants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'versionVariants': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3VersionVariantsResponse, Map<String, dynamic>>(versionVariants, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3ExperimentDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ExperimentDefinitionResponse(
      condition: pulumi.Input.fromValue(map['condition'] as String),
      versionVariants: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3VersionVariantsResponse.fromMap((map['versionVariants']! as Map).cast<String, dynamic>())),
    );
  }
}

