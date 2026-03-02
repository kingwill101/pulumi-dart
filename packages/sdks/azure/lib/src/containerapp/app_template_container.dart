// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_template_container_env.dart';
import 'app_template_container_liveness_probe.dart';
import 'app_template_container_readiness_probe.dart';
import 'app_template_container_startup_probe.dart';
import 'app_template_container_volume_mount.dart';

class AppTemplateContainer {
  /// A list of extra arguments to pass to the container.
  final pulumi.Input<List<String>>? args;
  /// A command to pass to the container to override the default. This is provided as a list of command line elements without spaces.
  final pulumi.Input<List<String>>? commands;
  /// The amount of vCPU to allocate to the container.
  ///
  /// > **Note:** When using a Consumption plan, the `cpu` and `memory` properties must add up to one of the combinations found in the Microsoft provided documentation, for more information see [vCPU and memory allocation requirements](https://learn.microsoft.com/azure/container-apps/containers#allocations)
  final pulumi.Input<double> cpu;
  /// One or more `env` blocks as detailed below.
  final pulumi.Input<List<AppTemplateContainerEnv>>? envs;
  /// The amount of ephemeral storage available to the Container App.
  ///
  /// > **Note:** `ephemeral_storage` is currently in preview and not configurable at this time.
  final pulumi.Input<String>? ephemeralStorage;
  /// The image to use to create the container.
  final pulumi.Input<String> image;
  /// A `liveness_probe` block as detailed below.
  final pulumi.Input<List<AppTemplateContainerLivenessProbe>>? livenessProbes;
  /// The amount of memory to allocate to the container.
  ///
  /// > **Note:** When using a Consumption plan, the `cpu` and `memory` properties must add up to one of the combinations found in the Microsoft provided documentation, for more information see [vCPU and memory allocation requirements](https://learn.microsoft.com/azure/container-apps/containers#allocations)
  final pulumi.Input<String> memory;
  /// The name of the container
  final pulumi.Input<String> name;
  /// A `readiness_probe` block as detailed below.
  final pulumi.Input<List<AppTemplateContainerReadinessProbe>>? readinessProbes;
  /// A `startup_probe` block as detailed below.
  final pulumi.Input<List<AppTemplateContainerStartupProbe>>? startupProbes;
  /// A `volume_mounts` block as detailed below.
  final pulumi.Input<List<AppTemplateContainerVolumeMount>>? volumeMounts;

  /// Creates a new [AppTemplateContainer].
  /// [args] A list of extra arguments to pass to the container.
  /// [commands] A command to pass to the container to override the default. This is provided as a list of command line elements without spaces.
  /// [cpu] The amount of vCPU to allocate to the container.
  /// [envs] One or more `env` blocks as detailed below.
  /// [ephemeralStorage] The amount of ephemeral storage available to the Container App.
  /// [image] The image to use to create the container.
  /// [livenessProbes] A `liveness_probe` block as detailed below.
  /// [memory] The amount of memory to allocate to the container.
  /// [name] The name of the container
  /// [readinessProbes] A `readiness_probe` block as detailed below.
  /// [startupProbes] A `startup_probe` block as detailed below.
  /// [volumeMounts] A `volume_mounts` block as detailed below.
  AppTemplateContainer({
    this.args,
    this.commands,
    required this.cpu,
    this.envs,
    this.ephemeralStorage,
    required this.image,
    this.livenessProbes,
    required this.memory,
    required this.name,
    this.readinessProbes,
    this.startupProbes,
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'cpu': cpu,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateContainerEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<AppTemplateContainerEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ephemeralStorage': ?ephemeralStorage,
      'image': image,
      'livenessProbes': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateContainerLivenessProbe>, List<Map<String, dynamic>>>(livenessProbes, (value) => pulumi.Input.encodeList<AppTemplateContainerLivenessProbe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memory': memory,
      'name': name,
      'readinessProbes': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateContainerReadinessProbe>, List<Map<String, dynamic>>>(readinessProbes, (value) => pulumi.Input.encodeList<AppTemplateContainerReadinessProbe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startupProbes': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateContainerStartupProbe>, List<Map<String, dynamic>>>(startupProbes, (value) => pulumi.Input.encodeList<AppTemplateContainerStartupProbe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<AppTemplateContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppTemplateContainer.fromMap(Map<String, dynamic> map) {
    return AppTemplateContainer(
      args: map['args'] == null ? null : ((map['args'] as List).cast<String>()).input(),
      commands: map['commands'] == null ? null : ((map['commands'] as List).cast<String>()).input(),
      cpu: (map['cpu'] as double).input(),
      envs: map['envs'] == null ? null : (pulumi.Input.decodeList<AppTemplateContainerEnv>(map['envs'], (value) => AppTemplateContainerEnv.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ephemeralStorage: map['ephemeralStorage'] == null ? null : (map['ephemeralStorage'] as String).input(),
      image: (map['image'] as String).input(),
      livenessProbes: map['livenessProbes'] == null ? null : (pulumi.Input.decodeList<AppTemplateContainerLivenessProbe>(map['livenessProbes'], (value) => AppTemplateContainerLivenessProbe.fromMap((value as Map).cast<String, dynamic>()))).input(),
      memory: (map['memory'] as String).input(),
      name: (map['name'] as String).input(),
      readinessProbes: map['readinessProbes'] == null ? null : (pulumi.Input.decodeList<AppTemplateContainerReadinessProbe>(map['readinessProbes'], (value) => AppTemplateContainerReadinessProbe.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startupProbes: map['startupProbes'] == null ? null : (pulumi.Input.decodeList<AppTemplateContainerStartupProbe>(map['startupProbes'], (value) => AppTemplateContainerStartupProbe.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<AppTemplateContainerVolumeMount>(map['volumeMounts'], (value) => AppTemplateContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

