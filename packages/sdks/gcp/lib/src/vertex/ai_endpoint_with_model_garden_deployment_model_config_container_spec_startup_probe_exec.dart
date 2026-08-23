// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeExec {
  /// Command is the command line to execute inside the container, the working
  /// directory for the command is root ('/') in the container's filesystem.
  /// The command is simply exec'd, it is not run inside a shell, so
  /// traditional shell instructions ('|', etc) won't work. To use a shell, you
  /// need to explicitly call out to that shell. Exit status of 0 is treated as
  /// live/healthy and non-zero is unhealthy.
  final pulumi.Input<List<String>>? commands;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeExec].
  /// [commands] Command is the command line to execute inside the container, the working
  const AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeExec({
    this.commands,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
    };
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeExec.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeExec(
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
