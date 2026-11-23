// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiTrainingPipelineModelToUploadContainerSpecStartupProbeExec {
  /// Command is the command line to execute inside the container.
  final pulumi.Input<List<String>?>? commands;

  /// Creates a new [AiTrainingPipelineModelToUploadContainerSpecStartupProbeExec].
  /// [commands] Command is the command line to execute inside the container.
  const AiTrainingPipelineModelToUploadContainerSpecStartupProbeExec({
    this.commands,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
    };
  }

  factory AiTrainingPipelineModelToUploadContainerSpecStartupProbeExec.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineModelToUploadContainerSpecStartupProbeExec(
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
