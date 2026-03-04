// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_job_reconciliation_pipeline_job_merge_config_whistle_config_source.dart';

class PipelineJobReconciliationPipelineJobMergeConfig {
  /// Describes the mapping configuration.
  final pulumi.Input<String>? description;

  /// Specifies the path to the mapping configuration for harmonization pipeline.
  /// Structure is documented below.
  final pulumi.Input<
    PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource
  >
  whistleConfigSource;

  /// Creates a new [PipelineJobReconciliationPipelineJobMergeConfig].
  /// [description] Describes the mapping configuration.
  /// [whistleConfigSource] Specifies the path to the mapping configuration for harmonization pipeline.
  PipelineJobReconciliationPipelineJobMergeConfig({
    this.description,
    required this.whistleConfigSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'whistleConfigSource':
          pulumi.Input.mapInputValue<
            PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource,
            Map<String, dynamic>
          >(whistleConfigSource, (value) => value.toMap()),
    };
  }

  factory PipelineJobReconciliationPipelineJobMergeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipelineJobReconciliationPipelineJobMergeConfig(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      whistleConfigSource: pulumi.Input.fromValue(
        PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource.fromMap(
          (map['whistleConfigSource']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
