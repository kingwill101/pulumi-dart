// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_spec_container_env.dart';
import 'service_template_spec_container_env_from.dart';
import 'service_template_spec_container_liveness_probe.dart';
import 'service_template_spec_container_port.dart';
import 'service_template_spec_container_readiness_probe.dart';
import 'service_template_spec_container_resources.dart';
import 'service_template_spec_container_startup_probe.dart';
import 'service_template_spec_container_volume_mount.dart';

class ServiceTemplateSpecContainer {
  /// Arguments to the entrypoint.
  /// The docker image's CMD is used if this is not provided.
  final pulumi.Input<List<String>>? args;
  /// Entrypoint array. Not executed within a shell.
  /// The docker image's ENTRYPOINT is used if this is not provided.
  final pulumi.Input<List<String>>? commands;
  /// (Optional, Deprecated)
  /// List of sources to populate environment variables in the container.
  /// All invalid keys will be reported as an event when the container is starting.
  /// When a key exists in multiple sources, the value associated with the last source will
  /// take precedence. Values defined by an Env with a duplicate key will take
  /// precedence.
  /// Structure is documented below.
  ///
  /// > **Warning:** `env_from` is deprecated and will be removed in a future major release. This field is not supported by the Cloud Run API.
  final pulumi.Input<List<ServiceTemplateSpecContainerEnvFrom>>? envFroms;
  /// List of environment variables to set in the container.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTemplateSpecContainerEnv>>? envs;
  /// Docker image name. This is most often a reference to a container located
  /// in the container registry, such as gcr.io/cloudrun/hello
  final pulumi.Input<String> image;
  /// Periodic probe of container liveness. Container will be restarted if the probe fails. More info:
  /// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecContainerLivenessProbe>? livenessProbe;
  /// Name of the container
  final pulumi.Input<String>? name;
  /// List of open ports in the container.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTemplateSpecContainerPort>>? ports;
  /// Periodic probe of container readiness.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecContainerReadinessProbe>? readinessProbe;
  /// Compute Resources required by this container. Used to set values such as max memory
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecContainerResources>? resources;
  /// Startup probe of application within the container.
  /// All other probes are disabled if a startup probe is provided, until it
  /// succeeds. Container will not be added to service endpoints if the probe fails.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecContainerStartupProbe>? startupProbe;
  /// Volume to mount into the container's filesystem.
  /// Only supports SecretVolumeSources.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTemplateSpecContainerVolumeMount>>? volumeMounts;
  /// (Optional, Deprecated)
  /// Container's working directory.
  /// If not specified, the container runtime's default will be used, which
  /// might be configured in the container image.
  ///
  /// > **Warning:** `working_dir` is deprecated and will be removed in a future major release. This field is not supported by the Cloud Run API.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [ServiceTemplateSpecContainer].
  /// [args] Arguments to the entrypoint.
  /// [commands] Entrypoint array. Not executed within a shell.
  /// [envFroms] (Optional, Deprecated)
  /// [envs] List of environment variables to set in the container.
  /// [image] Docker image name. This is most often a reference to a container located
  /// [livenessProbe] Periodic probe of container liveness. Container will be restarted if the probe fails. More info:
  /// [name] Name of the container
  /// [ports] List of open ports in the container.
  /// [readinessProbe] Periodic probe of container readiness.
  /// [resources] Compute Resources required by this container. Used to set values such as max memory
  /// [startupProbe] Startup probe of application within the container.
  /// [volumeMounts] Volume to mount into the container's filesystem.
  /// [workingDir] (Optional, Deprecated)
  ServiceTemplateSpecContainer({
    this.args,
    this.commands,
    this.envFroms,
    this.envs,
    required this.image,
    this.livenessProbe,
    this.name,
    this.ports,
    this.readinessProbe,
    this.resources,
    this.startupProbe,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'envFroms': ?pulumi.Input.mapOptionalInputValue<List<ServiceTemplateSpecContainerEnvFrom>, List<Map<String, dynamic>>>(envFroms, (value) => pulumi.Input.encodeList<ServiceTemplateSpecContainerEnvFrom, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envs': ?pulumi.Input.mapOptionalInputValue<List<ServiceTemplateSpecContainerEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<ServiceTemplateSpecContainerEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'livenessProbe': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecContainerLivenessProbe, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'name': ?name,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<ServiceTemplateSpecContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<ServiceTemplateSpecContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readinessProbe': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecContainerReadinessProbe, Map<String, dynamic>>(readinessProbe, (value) => value.toMap()),
      'resources': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecContainerResources, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'startupProbe': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecContainerStartupProbe, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<ServiceTemplateSpecContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<ServiceTemplateSpecContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': ?workingDir,
    };
  }

  factory ServiceTemplateSpecContainer.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainer(
      args: map['args'] == null ? null : ((map['args'] as List).cast<String>()).input(),
      commands: map['commands'] == null ? null : ((map['commands'] as List).cast<String>()).input(),
      envFroms: map['envFroms'] == null ? null : (pulumi.Input.decodeList<ServiceTemplateSpecContainerEnvFrom>(map['envFroms'], (value) => ServiceTemplateSpecContainerEnvFrom.fromMap((value as Map).cast<String, dynamic>()))).input(),
      envs: map['envs'] == null ? null : (pulumi.Input.decodeList<ServiceTemplateSpecContainerEnv>(map['envs'], (value) => ServiceTemplateSpecContainerEnv.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: (map['image'] as String).input(),
      livenessProbe: map['livenessProbe'] == null ? null : (ServiceTemplateSpecContainerLivenessProbe.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ports: map['ports'] == null ? null : (pulumi.Input.decodeList<ServiceTemplateSpecContainerPort>(map['ports'], (value) => ServiceTemplateSpecContainerPort.fromMap((value as Map).cast<String, dynamic>()))).input(),
      readinessProbe: map['readinessProbe'] == null ? null : (ServiceTemplateSpecContainerReadinessProbe.fromMap((map['readinessProbe'] as Map).cast<String, dynamic>())).input(),
      resources: map['resources'] == null ? null : (ServiceTemplateSpecContainerResources.fromMap((map['resources'] as Map).cast<String, dynamic>())).input(),
      startupProbe: map['startupProbe'] == null ? null : (ServiceTemplateSpecContainerStartupProbe.fromMap((map['startupProbe'] as Map).cast<String, dynamic>())).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<ServiceTemplateSpecContainerVolumeMount>(map['volumeMounts'], (value) => ServiceTemplateSpecContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workingDir: map['workingDir'] == null ? null : (map['workingDir'] as String).input(),
    );
  }
}

