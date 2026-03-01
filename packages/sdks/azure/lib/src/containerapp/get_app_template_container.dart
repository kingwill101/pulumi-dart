// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_template_container_env.dart';
import 'get_app_template_container_liveness_probe.dart';
import 'get_app_template_container_readiness_probe.dart';
import 'get_app_template_container_startup_probe.dart';
import 'get_app_template_container_volume_mount.dart';

class GetAppTemplateContainer {
  /// A list of extra arguments passed to the container.
  final List<String> args;
  /// A command passed to the container to override the default. This is provided as a list of command line elements without spaces.
  final List<String> commands;
  /// The amount of vCPU allocated to the container.
  final double cpu;
  /// One or more `env` blocks as detailed below.
  final List<GetAppTemplateContainerEnv> envs;
  /// The amount of ephemeral storage available to the Container App.
  final String ephemeralStorage;
  /// The image to use to create the container.
  final String image;
  /// A `liveness_probe` block as detailed below.
  final List<GetAppTemplateContainerLivenessProbe> livenessProbes;
  /// The amount of memory allocated to the container.
  final String memory;
  /// The name of the Container App.
  final String name;
  /// A `readiness_probe` block as detailed below.
  final List<GetAppTemplateContainerReadinessProbe> readinessProbes;
  /// A `startup_probe` block as detailed below.
  final List<GetAppTemplateContainerStartupProbe> startupProbes;
  /// A `volume_mounts` block as detailed below.
  final List<GetAppTemplateContainerVolumeMount> volumeMounts;

  /// Creates a new [GetAppTemplateContainer].
  /// [args] A list of extra arguments passed to the container.
  /// [commands] A command passed to the container to override the default. This is provided as a list of command line elements without spaces.
  /// [cpu] The amount of vCPU allocated to the container.
  /// [envs] One or more `env` blocks as detailed below.
  /// [ephemeralStorage] The amount of ephemeral storage available to the Container App.
  /// [image] The image to use to create the container.
  /// [livenessProbes] A `liveness_probe` block as detailed below.
  /// [memory] The amount of memory allocated to the container.
  /// [name] The name of the Container App.
  /// [readinessProbes] A `readiness_probe` block as detailed below.
  /// [startupProbes] A `startup_probe` block as detailed below.
  /// [volumeMounts] A `volume_mounts` block as detailed below.
  GetAppTemplateContainer({
    required this.args,
    required this.commands,
    required this.cpu,
    required this.envs,
    required this.ephemeralStorage,
    required this.image,
    required this.livenessProbes,
    required this.memory,
    required this.name,
    required this.readinessProbes,
    required this.startupProbes,
    required this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'commands': commands,
      'cpu': cpu,
      'envs': pulumi.Input.encodeList<GetAppTemplateContainerEnv, Map<String, dynamic>>(envs, (value) => value.toMap()),
      'ephemeralStorage': ephemeralStorage,
      'image': image,
      'livenessProbes': pulumi.Input.encodeList<GetAppTemplateContainerLivenessProbe, Map<String, dynamic>>(livenessProbes, (value) => value.toMap()),
      'memory': memory,
      'name': name,
      'readinessProbes': pulumi.Input.encodeList<GetAppTemplateContainerReadinessProbe, Map<String, dynamic>>(readinessProbes, (value) => value.toMap()),
      'startupProbes': pulumi.Input.encodeList<GetAppTemplateContainerStartupProbe, Map<String, dynamic>>(startupProbes, (value) => value.toMap()),
      'volumeMounts': pulumi.Input.encodeList<GetAppTemplateContainerVolumeMount, Map<String, dynamic>>(volumeMounts, (value) => value.toMap()),
    };
  }

  factory GetAppTemplateContainer.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateContainer(
      args: (map['args'] as List).cast<String>(),
      commands: (map['commands'] as List).cast<String>(),
      cpu: map['cpu'] as double,
      envs: pulumi.Input.decodeList<GetAppTemplateContainerEnv>(map['envs'], (value) => GetAppTemplateContainerEnv.fromMap((value as Map).cast<String, dynamic>())),
      ephemeralStorage: map['ephemeralStorage'] as String,
      image: map['image'] as String,
      livenessProbes: pulumi.Input.decodeList<GetAppTemplateContainerLivenessProbe>(map['livenessProbes'], (value) => GetAppTemplateContainerLivenessProbe.fromMap((value as Map).cast<String, dynamic>())),
      memory: map['memory'] as String,
      name: map['name'] as String,
      readinessProbes: pulumi.Input.decodeList<GetAppTemplateContainerReadinessProbe>(map['readinessProbes'], (value) => GetAppTemplateContainerReadinessProbe.fromMap((value as Map).cast<String, dynamic>())),
      startupProbes: pulumi.Input.decodeList<GetAppTemplateContainerStartupProbe>(map['startupProbes'], (value) => GetAppTemplateContainerStartupProbe.fromMap((value as Map).cast<String, dynamic>())),
      volumeMounts: pulumi.Input.decodeList<GetAppTemplateContainerVolumeMount>(map['volumeMounts'], (value) => GetAppTemplateContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

