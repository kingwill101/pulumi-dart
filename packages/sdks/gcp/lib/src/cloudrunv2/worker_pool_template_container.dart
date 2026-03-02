// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_template_container_env.dart';
import 'worker_pool_template_container_liveness_probe.dart';
import 'worker_pool_template_container_resources.dart';
import 'worker_pool_template_container_startup_probe.dart';
import 'worker_pool_template_container_volume_mount.dart';

class WorkerPoolTemplateContainer {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  final pulumi.Input<List<String>>? args;
  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final pulumi.Input<List<String>>? commands;
  /// Names of the containers that must start before this container.
  final pulumi.Input<List<String>>? dependsOns;
  /// List of environment variables to set in the container.
  /// Structure is documented below.
  final pulumi.Input<List<WorkerPoolTemplateContainerEnv>>? envs;
  /// URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  final pulumi.Input<String> image;
  /// Periodic probe of container liveness. Container will be restarted if the probe fails.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateContainerLivenessProbe>? livenessProbe;
  /// Name of the container specified as a DNS_LABEL.
  final pulumi.Input<String>? name;
  /// Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateContainerResources>? resources;
  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateContainerStartupProbe>? startupProbe;
  /// Volume to mount into the container's filesystem.
  /// Structure is documented below.
  final pulumi.Input<List<WorkerPoolTemplateContainerVolumeMount>>? volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [WorkerPoolTemplateContainer].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  /// [commands] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  /// [dependsOns] Names of the containers that must start before this container.
  /// [envs] List of environment variables to set in the container.
  /// [image] URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  /// [livenessProbe] Periodic probe of container liveness. Container will be restarted if the probe fails.
  /// [name] Name of the container specified as a DNS_LABEL.
  /// [resources] Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  /// [startupProbe] Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
  /// [volumeMounts] Volume to mount into the container's filesystem.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  WorkerPoolTemplateContainer({
    this.args,
    this.commands,
    this.dependsOns,
    this.envs,
    required this.image,
    this.livenessProbe,
    this.name,
    this.resources,
    this.startupProbe,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'dependsOns': ?dependsOns,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<WorkerPoolTemplateContainerEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<WorkerPoolTemplateContainerEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'livenessProbe': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateContainerLivenessProbe, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'name': ?name,
      'resources': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateContainerResources, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'startupProbe': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateContainerStartupProbe, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<WorkerPoolTemplateContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<WorkerPoolTemplateContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': ?workingDir,
    };
  }

  factory WorkerPoolTemplateContainer.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateContainer(
      args: map['args'] == null ? null : ((map['args'] as List).cast<String>()).input(),
      commands: map['commands'] == null ? null : ((map['commands'] as List).cast<String>()).input(),
      dependsOns: map['dependsOns'] == null ? null : ((map['dependsOns'] as List).cast<String>()).input(),
      envs: map['envs'] == null ? null : (pulumi.Input.decodeList<WorkerPoolTemplateContainerEnv>(map['envs'], (value) => WorkerPoolTemplateContainerEnv.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: (map['image'] as String).input(),
      livenessProbe: map['livenessProbe'] == null ? null : (WorkerPoolTemplateContainerLivenessProbe.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resources: map['resources'] == null ? null : (WorkerPoolTemplateContainerResources.fromMap((map['resources'] as Map).cast<String, dynamic>())).input(),
      startupProbe: map['startupProbe'] == null ? null : (WorkerPoolTemplateContainerStartupProbe.fromMap((map['startupProbe'] as Map).cast<String, dynamic>())).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<WorkerPoolTemplateContainerVolumeMount>(map['volumeMounts'], (value) => WorkerPoolTemplateContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workingDir: map['workingDir'] == null ? null : (map['workingDir'] as String).input(),
    );
  }
}

