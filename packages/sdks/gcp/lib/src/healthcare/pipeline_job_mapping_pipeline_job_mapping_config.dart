// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_job_mapping_pipeline_job_mapping_config_whistle_config_source.dart';

class PipelineJobMappingPipelineJobMappingConfig {
  /// Describes the mapping configuration.
  final pulumi.Input<String>? description;
  /// Specifies the path to the mapping configuration for harmonization pipeline.
  /// Structure is documented below.
  final pulumi.Input<PipelineJobMappingPipelineJobMappingConfigWhistleConfigSource>? whistleConfigSource;

  /// Creates a new [PipelineJobMappingPipelineJobMappingConfig].
  /// [description] Describes the mapping configuration.
  /// [whistleConfigSource] Specifies the path to the mapping configuration for harmonization pipeline.
  PipelineJobMappingPipelineJobMappingConfig({
    this.description,
    this.whistleConfigSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'whistleConfigSource': ?pulumi.Input.mapOptionalInputValue<PipelineJobMappingPipelineJobMappingConfigWhistleConfigSource, Map<String, dynamic>>(whistleConfigSource, (value) => value.toMap()),
    };
  }

  factory PipelineJobMappingPipelineJobMappingConfig.fromMap(Map<String, dynamic> map) {
    return PipelineJobMappingPipelineJobMappingConfig(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      whistleConfigSource: map['whistleConfigSource'] == null ? null : (PipelineJobMappingPipelineJobMappingConfigWhistleConfigSource.fromMap((map['whistleConfigSource']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

