// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_template_init_container_env.dart';
import 'app_template_init_container_volume_mount.dart';

class AppTemplateInitContainer {
  /// A list of extra arguments to pass to the container.
  final pulumi.Input<List<String>>? args;
  /// A command to pass to the container to override the default. This is provided as a list of command line elements without spaces.
  final pulumi.Input<List<String>>? commands;
  /// The amount of vCPU to allocate to the container.
  ///
  /// > **Note:** When using a Consumption plan, the `cpu` and `memory` properties must add up to one of the combinations found in the Microsoft provided documentation, for more information see [vCPU and memory allocation requirements](https://learn.microsoft.com/azure/container-apps/containers#allocations)
  final pulumi.Input<double>? cpu;
  /// One or more `env` blocks as detailed below.
  final pulumi.Input<List<AppTemplateInitContainerEnv>>? envs;
  /// The amount of ephemeral storage available to the Container App.
  ///
  /// > **Note:** `ephemeral_storage` is currently in preview and not configurable at this time.
  final pulumi.Input<String>? ephemeralStorage;
  /// The image to use to create the container.
  final pulumi.Input<String> image;
  /// The amount of memory to allocate to the container.
  ///
  /// > **Note:** When using a Consumption plan, the `cpu` and `memory` properties must add up to one of the combinations found in the Microsoft provided documentation, for more information see [vCPU and memory allocation requirements](https://learn.microsoft.com/azure/container-apps/containers#allocations)
  final pulumi.Input<String>? memory;
  /// The name of the container
  final pulumi.Input<String> name;
  /// A `volume_mounts` block as detailed below.
  final pulumi.Input<List<AppTemplateInitContainerVolumeMount>>? volumeMounts;

  /// Creates a new [AppTemplateInitContainer].
  /// [args] A list of extra arguments to pass to the container.
  /// [commands] A command to pass to the container to override the default. This is provided as a list of command line elements without spaces.
  /// [cpu] The amount of vCPU to allocate to the container.
  /// [envs] One or more `env` blocks as detailed below.
  /// [ephemeralStorage] The amount of ephemeral storage available to the Container App.
  /// [image] The image to use to create the container.
  /// [memory] The amount of memory to allocate to the container.
  /// [name] The name of the container
  /// [volumeMounts] A `volume_mounts` block as detailed below.
  AppTemplateInitContainer({
    this.args,
    this.commands,
    this.cpu,
    this.envs,
    this.ephemeralStorage,
    required this.image,
    this.memory,
    required this.name,
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'cpu': ?cpu,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateInitContainerEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<AppTemplateInitContainerEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ephemeralStorage': ?ephemeralStorage,
      'image': image,
      'memory': ?memory,
      'name': name,
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateInitContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<AppTemplateInitContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppTemplateInitContainer.fromMap(Map<String, dynamic> map) {
    return AppTemplateInitContainer(
      args: map['args'] == null ? null : ((map['args'] as List).cast<String>()).input(),
      commands: map['commands'] == null ? null : ((map['commands'] as List).cast<String>()).input(),
      cpu: map['cpu'] == null ? null : (map['cpu'] as double).input(),
      envs: map['envs'] == null ? null : (pulumi.Input.decodeList<AppTemplateInitContainerEnv>(map['envs'], (value) => AppTemplateInitContainerEnv.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ephemeralStorage: map['ephemeralStorage'] == null ? null : (map['ephemeralStorage'] as String).input(),
      image: (map['image'] as String).input(),
      memory: map['memory'] == null ? null : (map['memory'] as String).input(),
      name: (map['name'] as String).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<AppTemplateInitContainerVolumeMount>(map['volumeMounts'], (value) => AppTemplateInitContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

