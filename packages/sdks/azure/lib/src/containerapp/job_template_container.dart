// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_container_env.dart';
import 'job_template_container_liveness_probe.dart';
import 'job_template_container_readiness_probe.dart';
import 'job_template_container_startup_probe.dart';
import 'job_template_container_volume_mount.dart';

class JobTemplateContainer {
  /// A list of extra arguments to pass to the container.
  final pulumi.Input<List<String>>? args;
  /// A command to pass to the container to override the default. This is provided as a list of command line elements without spaces.
  final pulumi.Input<List<String>>? commands;
  /// The amount of vCPU to allocate to the container.
  ///
  /// > **Note:** When using a Consumption plan, the `cpu` and `memory` properties must add up to one of the combinations found in the Microsoft provided documentation, for more information see [vCPU and memory allocation requirements](https://learn.microsoft.com/azure/container-apps/containers#allocations)
  final pulumi.Input<double> cpu;
  /// One or more `env` blocks as detailed below.
  final pulumi.Input<List<JobTemplateContainerEnv>>? envs;
  /// The amount of ephemeral storage available to the Container App.
  ///
  /// > **Note:** `ephemeral_storage` is currently in preview and not configurable at this time.
  final pulumi.Input<String>? ephemeralStorage;
  /// The image to use to create the container.
  final pulumi.Input<String> image;
  /// A `liveness_probe` block as detailed below.
  final pulumi.Input<List<JobTemplateContainerLivenessProbe>>? livenessProbes;
  /// The amount of memory to allocate to the container.
  ///
  /// > **Note:** When using a Consumption plan, the `cpu` and `memory` properties must add up to one of the combinations found in the Microsoft provided documentation, for more information see [vCPU and memory allocation requirements](https://learn.microsoft.com/azure/container-apps/containers#allocations)
  final pulumi.Input<String> memory;
  /// The name of the container.
  final pulumi.Input<String> name;
  /// A `readiness_probe` block as detailed below.
  final pulumi.Input<List<JobTemplateContainerReadinessProbe>>? readinessProbes;
  /// A `startup_probe` block as detailed below.
  final pulumi.Input<List<JobTemplateContainerStartupProbe>>? startupProbes;
  /// A `volume_mounts` block as detailed below.
  final pulumi.Input<List<JobTemplateContainerVolumeMount>>? volumeMounts;

  /// Creates a new [JobTemplateContainer].
  /// [args] A list of extra arguments to pass to the container.
  /// [commands] A command to pass to the container to override the default. This is provided as a list of command line elements without spaces.
  /// [cpu] The amount of vCPU to allocate to the container.
  /// [envs] One or more `env` blocks as detailed below.
  /// [ephemeralStorage] The amount of ephemeral storage available to the Container App.
  /// [image] The image to use to create the container.
  /// [livenessProbes] A `liveness_probe` block as detailed below.
  /// [memory] The amount of memory to allocate to the container.
  /// [name] The name of the container.
  /// [readinessProbes] A `readiness_probe` block as detailed below.
  /// [startupProbes] A `startup_probe` block as detailed below.
  /// [volumeMounts] A `volume_mounts` block as detailed below.
  JobTemplateContainer({
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
      'envs': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateContainerEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<JobTemplateContainerEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ephemeralStorage': ?ephemeralStorage,
      'image': image,
      'livenessProbes': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateContainerLivenessProbe>, List<Map<String, dynamic>>>(livenessProbes, (value) => pulumi.Input.encodeList<JobTemplateContainerLivenessProbe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memory': memory,
      'name': name,
      'readinessProbes': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateContainerReadinessProbe>, List<Map<String, dynamic>>>(readinessProbes, (value) => pulumi.Input.encodeList<JobTemplateContainerReadinessProbe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startupProbes': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateContainerStartupProbe>, List<Map<String, dynamic>>>(startupProbes, (value) => pulumi.Input.encodeList<JobTemplateContainerStartupProbe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<JobTemplateContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobTemplateContainer.fromMap(Map<String, dynamic> map) {
    return JobTemplateContainer(
      args: map['args'] == null ? null : ((map['args']! as List).cast<String>()).input(),
      commands: map['commands'] == null ? null : ((map['commands']! as List).cast<String>()).input(),
      cpu: (map['cpu'] as double).input(),
      envs: map['envs'] == null ? null : (pulumi.Input.decodeList<JobTemplateContainerEnv>(map['envs']!, (value) => JobTemplateContainerEnv.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ephemeralStorage: map['ephemeralStorage'] == null ? null : (map['ephemeralStorage']! as String).input(),
      image: (map['image'] as String).input(),
      livenessProbes: map['livenessProbes'] == null ? null : (pulumi.Input.decodeList<JobTemplateContainerLivenessProbe>(map['livenessProbes']!, (value) => JobTemplateContainerLivenessProbe.fromMap((value as Map).cast<String, dynamic>()))).input(),
      memory: (map['memory'] as String).input(),
      name: (map['name'] as String).input(),
      readinessProbes: map['readinessProbes'] == null ? null : (pulumi.Input.decodeList<JobTemplateContainerReadinessProbe>(map['readinessProbes']!, (value) => JobTemplateContainerReadinessProbe.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startupProbes: map['startupProbes'] == null ? null : (pulumi.Input.decodeList<JobTemplateContainerStartupProbe>(map['startupProbes']!, (value) => JobTemplateContainerStartupProbe.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<JobTemplateContainerVolumeMount>(map['volumeMounts']!, (value) => JobTemplateContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

