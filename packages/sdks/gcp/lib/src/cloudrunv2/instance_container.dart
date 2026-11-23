// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_container_env.dart';
import 'instance_container_liveness_probe.dart';
import 'instance_container_port.dart';
import 'instance_container_resources.dart';
import 'instance_container_startup_probe.dart';
import 'instance_container_volume_mount.dart';

class InstanceContainer {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final pulumi.Input<List<String>?>? args;
  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final pulumi.Input<List<String>?>? commands;
  /// List of environment variables to set in the container.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceContainerEnv>?>? envs;
  /// URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  final pulumi.Input<String> image;
  /// Periodic probe of container liveness. Container will be restarted if the probe fails.
  /// Structure is documented below.
  final pulumi.Input<InstanceContainerLivenessProbe?>? livenessProbe;
  /// Name of the container specified as a DNS_LABEL.
  final pulumi.Input<String?>? name;
  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.
  /// If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on
  /// Structure is documented below.
  final pulumi.Input<List<InstanceContainerPort>?>? ports;
  /// Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  /// Structure is documented below.
  final pulumi.Input<InstanceContainerResources?>? resources;
  /// Indicates that this container can act as a sandbox supervisor and launch sandboxes.
  final pulumi.Input<bool?>? sandboxLauncher;
  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
  /// Structure is documented below.
  final pulumi.Input<InstanceContainerStartupProbe?>? startupProbe;
  /// Volume to mount into the container's filesystem.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceContainerVolumeMount>?>? volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final pulumi.Input<String?>? workingDir;

  /// Creates a new [InstanceContainer].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  /// [commands] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  /// [envs] List of environment variables to set in the container.
  /// [image] URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  /// [livenessProbe] Periodic probe of container liveness. Container will be restarted if the probe fails.
  /// [name] Name of the container specified as a DNS_LABEL.
  /// [ports] List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.
  /// [resources] Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  /// [sandboxLauncher] Indicates that this container can act as a sandbox supervisor and launch sandboxes.
  /// [startupProbe] Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
  /// [volumeMounts] Volume to mount into the container's filesystem.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  const InstanceContainer({
    this.args,
    this.commands,
    this.envs,
    required this.image,
    this.livenessProbe,
    this.name,
    this.ports,
    this.resources,
    this.sandboxLauncher,
    this.startupProbe,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<InstanceContainerEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<InstanceContainerEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'livenessProbe': ?pulumi.Input.mapOptionalInputValue<InstanceContainerLivenessProbe, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'name': ?name,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<InstanceContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<InstanceContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?pulumi.Input.mapOptionalInputValue<InstanceContainerResources, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'sandboxLauncher': ?sandboxLauncher,
      'startupProbe': ?pulumi.Input.mapOptionalInputValue<InstanceContainerStartupProbe, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<InstanceContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<InstanceContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': ?workingDir,
    };
  }

  factory InstanceContainer.fromMap(Map<String, dynamic> map) {
    return InstanceContainer(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceContainerEnv>(guardedValue, (value) => InstanceContainerEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      livenessProbe: (() { final guardedValue = map['livenessProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceContainerLivenessProbe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceContainerPort>(guardedValue, (value) => InstanceContainerPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceContainerResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sandboxLauncher: (() { final guardedValue = map['sandboxLauncher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      startupProbe: (() { final guardedValue = map['startupProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceContainerStartupProbe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceContainerVolumeMount>(guardedValue, (value) => InstanceContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workingDir: (() { final guardedValue = map['workingDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
