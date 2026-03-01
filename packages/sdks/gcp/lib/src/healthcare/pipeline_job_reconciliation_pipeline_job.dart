// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_job_reconciliation_pipeline_job_merge_config.dart';

class PipelineJobReconciliationPipelineJob {
  /// The harmonized FHIR store to write harmonized FHIR resources to,
  /// in the format of: project/{projectID}/locations/{locationID}/datasets/{datasetName}/fhirStores/{id}
  final String? fhirStoreDestination;
  /// Specifies the top level directory of the matching configs used
  /// in all mapping pipelines, which extract properties for resources
  /// to be matched on.
  /// Example: gs://{bucket-id}/{path/to/matching/configs}
  final String matchingUriPrefix;
  /// Specifies the location of the reconciliation configuration.
  /// Structure is documented below.
  final PipelineJobReconciliationPipelineJobMergeConfig mergeConfig;

  /// Creates a new [PipelineJobReconciliationPipelineJob].
  /// [fhirStoreDestination] The harmonized FHIR store to write harmonized FHIR resources to,
  /// [matchingUriPrefix] Specifies the top level directory of the matching configs used
  /// [mergeConfig] Specifies the location of the reconciliation configuration.
  PipelineJobReconciliationPipelineJob({
    this.fhirStoreDestination,
    required this.matchingUriPrefix,
    required this.mergeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fhirStoreDestination': ?fhirStoreDestination,
      'matchingUriPrefix': matchingUriPrefix,
      'mergeConfig': mergeConfig.toMap(),
    };
  }

  factory PipelineJobReconciliationPipelineJob.fromMap(Map<String, dynamic> map) {
    return PipelineJobReconciliationPipelineJob(
      fhirStoreDestination: map['fhirStoreDestination'] == null ? null : map['fhirStoreDestination'] as String,
      matchingUriPrefix: map['matchingUriPrefix'] as String,
      mergeConfig: PipelineJobReconciliationPipelineJobMergeConfig.fromMap((map['mergeConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

