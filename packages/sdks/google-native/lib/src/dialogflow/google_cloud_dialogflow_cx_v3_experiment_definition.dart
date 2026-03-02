// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_version_variants.dart';

/// Definition of the experiment.
class GoogleCloudDialogflowCxV3ExperimentDefinition {
  /// The condition defines which subset of sessions are selected for this experiment. If not specified, all sessions are eligible. E.g. "query_input.language_code=en" See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  final pulumi.Input<String>? condition;
  /// The flow versions as the variants of this experiment.
  final pulumi.Input<GoogleCloudDialogflowCxV3VersionVariants>? versionVariants;

  /// Creates a new [GoogleCloudDialogflowCxV3ExperimentDefinition].
  /// [condition] The condition defines which subset of sessions are selected for this experiment. If not specified, all sessions are eligible. E.g. "query_input.language_code=en" See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  /// [versionVariants] The flow versions as the variants of this experiment.
  GoogleCloudDialogflowCxV3ExperimentDefinition({
    this.condition,
    this.versionVariants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'versionVariants': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3VersionVariants, Map<String, dynamic>>(versionVariants, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3ExperimentDefinition.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ExperimentDefinition(
      condition: map['condition'] == null ? null : (map['condition'] as String).input(),
      versionVariants: map['versionVariants'] == null ? null : (GoogleCloudDialogflowCxV3VersionVariants.fromMap((map['versionVariants'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

