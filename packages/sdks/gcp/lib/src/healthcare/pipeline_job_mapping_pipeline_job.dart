// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_job_mapping_pipeline_job_fhir_streaming_source.dart';
import 'pipeline_job_mapping_pipeline_job_mapping_config.dart';

class PipelineJobMappingPipelineJob {
  /// If set, the mapping pipeline will write snapshots to this
  /// FHIR store without assigning stable IDs. You must
  /// grant your pipeline project's Cloud Healthcare Service
  /// Agent serviceaccount healthcare.fhirResources.executeBundle
  /// and healthcare.fhirResources.create permissions on the
  /// destination store. The destination store must set
  /// [disableReferentialIntegrity][FhirStore.disable_referential_integrity]
  /// to true. The destination store must use FHIR version R4.
  /// Format: project/{projectID}/locations/{locationID}/datasets/{datasetName}/fhirStores/{fhirStoreID}.
  final pulumi.Input<String>? fhirStoreDestination;
  /// A streaming FHIR data source.
  /// Structure is documented below.
  final pulumi.Input<PipelineJobMappingPipelineJobFhirStreamingSource>? fhirStreamingSource;
  /// The location of the mapping configuration.
  /// Structure is documented below.
  final pulumi.Input<PipelineJobMappingPipelineJobMappingConfig> mappingConfig;
  /// If set to true, a mapping pipeline will send output snapshots
  /// to the reconciliation pipeline in its dataset. A reconciliation
  /// pipeline must exist in this dataset before a mapping pipeline
  /// with a reconciliation destination can be created.
  final pulumi.Input<bool>? reconciliationDestination;

  /// Creates a new [PipelineJobMappingPipelineJob].
  /// [fhirStoreDestination] If set, the mapping pipeline will write snapshots to this
  /// [fhirStreamingSource] A streaming FHIR data source.
  /// [mappingConfig] The location of the mapping configuration.
  /// [reconciliationDestination] If set to true, a mapping pipeline will send output snapshots
  PipelineJobMappingPipelineJob({
    this.fhirStoreDestination,
    this.fhirStreamingSource,
    required this.mappingConfig,
    this.reconciliationDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fhirStoreDestination': ?fhirStoreDestination,
      'fhirStreamingSource': ?pulumi.Input.mapOptionalInputValue<PipelineJobMappingPipelineJobFhirStreamingSource, Map<String, dynamic>>(fhirStreamingSource, (value) => value.toMap()),
      'mappingConfig': pulumi.Input.mapInputValue<PipelineJobMappingPipelineJobMappingConfig, Map<String, dynamic>>(mappingConfig, (value) => value.toMap()),
      'reconciliationDestination': ?reconciliationDestination,
    };
  }

  factory PipelineJobMappingPipelineJob.fromMap(Map<String, dynamic> map) {
    return PipelineJobMappingPipelineJob(
      fhirStoreDestination: map['fhirStoreDestination'] == null ? null : (map['fhirStoreDestination'] as String).input(),
      fhirStreamingSource: map['fhirStreamingSource'] == null ? null : (PipelineJobMappingPipelineJobFhirStreamingSource.fromMap((map['fhirStreamingSource'] as Map).cast<String, dynamic>())).input(),
      mappingConfig: (PipelineJobMappingPipelineJobMappingConfig.fromMap((map['mappingConfig'] as Map).cast<String, dynamic>())).input(),
      reconciliationDestination: map['reconciliationDestination'] == null ? null : (map['reconciliationDestination'] as bool).input(),
    );
  }
}

