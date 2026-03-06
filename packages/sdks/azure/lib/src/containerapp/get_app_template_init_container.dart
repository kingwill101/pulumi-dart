// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_template_init_container_env.dart';
import 'get_app_template_init_container_volume_mount.dart';

class GetAppTemplateInitContainer {
  /// A list of extra arguments passed to the container.
  final pulumi.Input<List<String>> args;
  /// A command passed to the container to override the default. This is provided as a list of command line elements without spaces.
  final pulumi.Input<List<String>> commands;
  /// The amount of vCPU allocated to the container.
  final pulumi.Input<double> cpu;
  /// One or more `env` blocks as detailed below.
  final pulumi.Input<List<GetAppTemplateInitContainerEnv>> envs;
  /// The amount of ephemeral storage available to the Container App.
  final pulumi.Input<String> ephemeralStorage;
  /// The image to use to create the container.
  final pulumi.Input<String> image;
  /// The amount of memory allocated to the container.
  final pulumi.Input<String> memory;
  /// The name of the Container App.
  final pulumi.Input<String> name;
  /// A `volume_mounts` block as detailed below.
  final pulumi.Input<List<GetAppTemplateInitContainerVolumeMount>> volumeMounts;

  /// Creates a new [GetAppTemplateInitContainer].
  /// [args] A list of extra arguments passed to the container.
  /// [commands] A command passed to the container to override the default. This is provided as a list of command line elements without spaces.
  /// [cpu] The amount of vCPU allocated to the container.
  /// [envs] One or more `env` blocks as detailed below.
  /// [ephemeralStorage] The amount of ephemeral storage available to the Container App.
  /// [image] The image to use to create the container.
  /// [memory] The amount of memory allocated to the container.
  /// [name] The name of the Container App.
  /// [volumeMounts] A `volume_mounts` block as detailed below.
  const GetAppTemplateInitContainer({
    required this.args,
    required this.commands,
    required this.cpu,
    required this.envs,
    required this.ephemeralStorage,
    required this.image,
    required this.memory,
    required this.name,
    required this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'commands': commands,
      'cpu': cpu,
      'envs': pulumi.Input.mapInputValue<List<GetAppTemplateInitContainerEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<GetAppTemplateInitContainerEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ephemeralStorage': ephemeralStorage,
      'image': image,
      'memory': memory,
      'name': name,
      'volumeMounts': pulumi.Input.mapInputValue<List<GetAppTemplateInitContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<GetAppTemplateInitContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAppTemplateInitContainer.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateInitContainer(
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      commands: pulumi.Input.fromValue((map['commands'] as List).cast<String>()),
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      envs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppTemplateInitContainerEnv>(map['envs']!, (value) => GetAppTemplateInitContainerEnv.fromMap((value as Map).cast<String, dynamic>()))),
      ephemeralStorage: pulumi.Input.fromValue(map['ephemeralStorage'] as String),
      image: pulumi.Input.fromValue(map['image'] as String),
      memory: pulumi.Input.fromValue(map['memory'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      volumeMounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppTemplateInitContainerVolumeMount>(map['volumeMounts']!, (value) => GetAppTemplateInitContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

