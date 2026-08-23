// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleCreatePipelineJobRequestPipelineJobTemplateMetadata {
  /// The versionName in artifact registry. Will always be presented in output if the PipelineJob.template_uri is from supported template registry. Format is "sha256:abcdef123456...".
  final pulumi.Input<String>? version;

  /// Creates a new [ScheduleCreatePipelineJobRequestPipelineJobTemplateMetadata].
  /// [version] The versionName in artifact registry. Will always be presented in output if the PipelineJob.template_uri is from supported template registry. Format is "sha256:abcdef123456...".
  const ScheduleCreatePipelineJobRequestPipelineJobTemplateMetadata({
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': ?version,
    };
  }

  factory ScheduleCreatePipelineJobRequestPipelineJobTemplateMetadata.fromMap(Map<String, dynamic> map) {
    return ScheduleCreatePipelineJobRequestPipelineJobTemplateMetadata(
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
