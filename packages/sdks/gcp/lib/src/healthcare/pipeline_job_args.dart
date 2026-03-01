// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_job_backfill_pipeline_job.dart';
import 'pipeline_job_mapping_pipeline_job.dart';
import 'pipeline_job_reconciliation_pipeline_job.dart';

/// {@template pulumi_healthcare_pipeline_job_pipeline_job_args_doc}
/// The set of arguments for PipelineJob.
/// {@endtemplate}
/// {@macro pulumi_healthcare_pipeline_job_pipeline_job_args_doc}
class PipelineJobArgs {
  /// Specifies the backfill configuration.
  /// Structure is documented below.
  final pulumi.Input<PipelineJobBackfillPipelineJob>? backfillPipelineJob;
  /// Healthcare Dataset under which the Pipeline Job is to run
  final pulumi.Input<String> dataset;
  /// If true, disables writing lineage for the pipeline.
  final pulumi.Input<bool>? disableLineage;
  /// User-supplied key-value pairs used to organize Pipeline Jobs.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of
  /// maximum 128 bytes, and must conform to the following PCRE regular expression:
  /// [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values are optional, must be between 1 and 63 characters long, have a
  /// UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE
  /// regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be associated with a given pipeline.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location where the Pipeline Job is to run
  final pulumi.Input<String> location;
  /// Specifies mapping configuration.
  /// Structure is documented below.
  final pulumi.Input<PipelineJobMappingPipelineJob>? mappingPipelineJob;
  /// Specifies the name of the pipeline job. This field is user-assigned.
  final pulumi.Input<String>? name;
  /// Specifies reconciliation configuration.
  /// Structure is documented below.
  final pulumi.Input<PipelineJobReconciliationPipelineJob>? reconciliationPipelineJob;

  /// Creates a new [PipelineJobArgs].
  /// [backfillPipelineJob] Specifies the backfill configuration.
  /// [dataset] Healthcare Dataset under which the Pipeline Job is to run
  /// [disableLineage] If true, disables writing lineage for the pipeline.
  /// [labels] User-supplied key-value pairs used to organize Pipeline Jobs.
  /// [location] Location where the Pipeline Job is to run
  /// [mappingPipelineJob] Specifies mapping configuration.
  /// [name] Specifies the name of the pipeline job. This field is user-assigned.
  /// [reconciliationPipelineJob] Specifies reconciliation configuration.
  PipelineJobArgs({
    pulumi.Output<PipelineJobBackfillPipelineJob>? backfillPipelineJob,
    required pulumi.Output<String> dataset,
    pulumi.Output<bool>? disableLineage,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<PipelineJobMappingPipelineJob>? mappingPipelineJob,
    pulumi.Output<String>? name,
    pulumi.Output<PipelineJobReconciliationPipelineJob>? reconciliationPipelineJob,
  }) :
      backfillPipelineJob = pulumi.Input.asOptionalInput<PipelineJobBackfillPipelineJob>(backfillPipelineJob),
      dataset = pulumi.Input.asInput<String>(dataset),
      disableLineage = pulumi.Input.asOptionalInput<bool>(disableLineage),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      mappingPipelineJob = pulumi.Input.asOptionalInput<PipelineJobMappingPipelineJob>(mappingPipelineJob),
      name = pulumi.Input.asOptionalInput<String>(name),
      reconciliationPipelineJob = pulumi.Input.asOptionalInput<PipelineJobReconciliationPipelineJob>(reconciliationPipelineJob);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backfillPipelineJob': ?pulumi.Input.mapOptionalInputValue<PipelineJobBackfillPipelineJob, Map<String, dynamic>>(backfillPipelineJob, (value) => value.toMap()),
      'dataset': dataset,
      'disableLineage': ?disableLineage,
      'labels': ?labels,
      'location': location,
      'mappingPipelineJob': ?pulumi.Input.mapOptionalInputValue<PipelineJobMappingPipelineJob, Map<String, dynamic>>(mappingPipelineJob, (value) => value.toMap()),
      'name': ?name,
      'reconciliationPipelineJob': ?pulumi.Input.mapOptionalInputValue<PipelineJobReconciliationPipelineJob, Map<String, dynamic>>(reconciliationPipelineJob, (value) => value.toMap()),
    };
  }

  factory PipelineJobArgs.fromMap(Map<String, dynamic> map) {
    return PipelineJobArgs(
      backfillPipelineJob: map['backfillPipelineJob'] == null ? null : pulumi.Output.create<PipelineJobBackfillPipelineJob>(PipelineJobBackfillPipelineJob.fromMap((map['backfillPipelineJob'] as Map).cast<String, dynamic>())),
      dataset: pulumi.Output.create<String>(map['dataset'] as String),
      disableLineage: map['disableLineage'] == null ? null : pulumi.Output.create<bool>(map['disableLineage'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      mappingPipelineJob: map['mappingPipelineJob'] == null ? null : pulumi.Output.create<PipelineJobMappingPipelineJob>(PipelineJobMappingPipelineJob.fromMap((map['mappingPipelineJob'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      reconciliationPipelineJob: map['reconciliationPipelineJob'] == null ? null : pulumi.Output.create<PipelineJobReconciliationPipelineJob>(PipelineJobReconciliationPipelineJob.fromMap((map['reconciliationPipelineJob'] as Map).cast<String, dynamic>())),
    );
  }
}

