// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_job_backfill_pipeline_job.dart';
import 'pipeline_job_mapping_pipeline_job.dart';
import 'pipeline_job_reconciliation_pipeline_job.dart';

/// Input properties used for looking up and filtering PipelineJob resources.
class PipelineJobState {
  /// Specifies the backfill configuration.
  /// Structure is documented below.
  final pulumi.Input<PipelineJobBackfillPipelineJob>? backfillPipelineJob;

  /// Healthcare Dataset under which the Pipeline Job is to run
  final pulumi.Input<String>? dataset;

  /// If true, disables writing lineage for the pipeline.
  final pulumi.Input<bool>? disableLineage;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

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
  final pulumi.Input<String>? location;

  /// Specifies mapping configuration.
  /// Structure is documented below.
  final pulumi.Input<PipelineJobMappingPipelineJob>? mappingPipelineJob;

  /// Specifies the name of the pipeline job. This field is user-assigned.
  final pulumi.Input<String>? name;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Specifies reconciliation configuration.
  /// Structure is documented below.
  final pulumi.Input<PipelineJobReconciliationPipelineJob>?
  reconciliationPipelineJob;

  /// The fully qualified name of this dataset
  final pulumi.Input<String>? selfLink;

  /// Creates a new [PipelineJobState].
  /// [backfillPipelineJob] Specifies the backfill configuration.
  /// [dataset] Healthcare Dataset under which the Pipeline Job is to run
  /// [disableLineage] If true, disables writing lineage for the pipeline.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] User-supplied key-value pairs used to organize Pipeline Jobs.
  /// [location] Location where the Pipeline Job is to run
  /// [mappingPipelineJob] Specifies mapping configuration.
  /// [name] Specifies the name of the pipeline job. This field is user-assigned.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciliationPipelineJob] Specifies reconciliation configuration.
  /// [selfLink] The fully qualified name of this dataset
  PipelineJobState({
    this.backfillPipelineJob,
    this.dataset,
    this.disableLineage,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.mappingPipelineJob,
    this.name,
    this.pulumiLabels,
    this.reconciliationPipelineJob,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backfillPipelineJob':
          ?pulumi.Input.mapOptionalInputValue<
            PipelineJobBackfillPipelineJob,
            Map<String, dynamic>
          >(backfillPipelineJob, (value) => value.toMap()),
      'dataset': ?dataset,
      'disableLineage': ?disableLineage,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'mappingPipelineJob':
          ?pulumi.Input.mapOptionalInputValue<
            PipelineJobMappingPipelineJob,
            Map<String, dynamic>
          >(mappingPipelineJob, (value) => value.toMap()),
      'name': ?name,
      'pulumiLabels': ?pulumiLabels,
      'reconciliationPipelineJob':
          ?pulumi.Input.mapOptionalInputValue<
            PipelineJobReconciliationPipelineJob,
            Map<String, dynamic>
          >(reconciliationPipelineJob, (value) => value.toMap()),
      'selfLink': ?selfLink,
    };
  }

  factory PipelineJobState.fromMap(Map<String, dynamic> map) {
    return PipelineJobState(
      backfillPipelineJob: (() {
        final guardedValue = map['backfillPipelineJob'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipelineJobBackfillPipelineJob.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dataset: (() {
        final guardedValue = map['dataset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disableLineage: (() {
        final guardedValue = map['disableLineage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mappingPipelineJob: (() {
        final guardedValue = map['mappingPipelineJob'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipelineJobMappingPipelineJob.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      reconciliationPipelineJob: (() {
        final guardedValue = map['reconciliationPipelineJob'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipelineJobReconciliationPipelineJob.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      selfLink: (() {
        final guardedValue = map['selfLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
