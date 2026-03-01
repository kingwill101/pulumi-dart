// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_version_variants_response.dart';

/// Definition of the experiment.
class GoogleCloudDialogflowCxV3beta1ExperimentDefinitionResponse {
  /// The condition defines which subset of sessions are selected for this experiment. If not specified, all sessions are eligible. E.g. "query_input.language_code=en" See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  final String condition;
  /// The flow versions as the variants of this experiment.
  final GoogleCloudDialogflowCxV3beta1VersionVariantsResponse versionVariants;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ExperimentDefinitionResponse].
  /// [condition] The condition defines which subset of sessions are selected for this experiment. If not specified, all sessions are eligible. E.g. "query_input.language_code=en" See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  /// [versionVariants] The flow versions as the variants of this experiment.
  GoogleCloudDialogflowCxV3beta1ExperimentDefinitionResponse({
    required this.condition,
    required this.versionVariants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'versionVariants': versionVariants.toMap(),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ExperimentDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ExperimentDefinitionResponse(
      condition: map['condition'] as String,
      versionVariants: GoogleCloudDialogflowCxV3beta1VersionVariantsResponse.fromMap((map['versionVariants'] as Map).cast<String, dynamic>()),
    );
  }
}

