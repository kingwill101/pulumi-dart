// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiScheduleCreatePipelineJobRequestPipelineJobTemplateMetadata {
  /// The versionName in artifact registry. Will always be presented in output if the PipelineJob.template_uri is from supported template registry. Format is "sha256:abcdef123456...".
  final pulumi.Input<String?>? version;

  /// Creates a new [AiScheduleCreatePipelineJobRequestPipelineJobTemplateMetadata].
  /// [version] The versionName in artifact registry. Will always be presented in output if the PipelineJob.template_uri is from supported template registry. Format is "sha256:abcdef123456...".
  const AiScheduleCreatePipelineJobRequestPipelineJobTemplateMetadata({
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': ?version,
    };
  }

  factory AiScheduleCreatePipelineJobRequestPipelineJobTemplateMetadata.fromMap(Map<String, dynamic> map) {
    return AiScheduleCreatePipelineJobRequestPipelineJobTemplateMetadata(
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
