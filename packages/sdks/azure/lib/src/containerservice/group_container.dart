// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_container_liveness_probe.dart';
import 'group_container_port.dart';
import 'group_container_readiness_probe.dart';
import 'group_container_security.dart';
import 'group_container_volume.dart';

class GroupContainer {
  /// A list of commands which should be run on the container. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? commands;
  /// The required number of CPU cores of the containers. Changing this forces a new resource to be created.
  final pulumi.Input<double> cpu;
  /// The upper limit of the number of CPU cores of the containers.
  final pulumi.Input<double>? cpuLimit;
  /// A list of environment variables to be set on the container. Specified as a map of name/value pairs. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// The container image name. Changing this forces a new resource to be created.
  final pulumi.Input<String> image;
  /// The definition of a readiness probe for this container as documented in the `livenessProbe` block below. Changing this forces a new resource to be created.
  final pulumi.Input<GroupContainerLivenessProbe>? livenessProbe;
  /// The required memory of the containers in GB. Changing this forces a new resource to be created.
  final pulumi.Input<double> memory;
  /// The upper limit of the memory of the containers in GB.
  final pulumi.Input<double>? memoryLimit;
  /// Specifies the name of the Container. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// A set of public ports for the container. Changing this forces a new resource to be created. Set as documented in the `ports` block below.
  final pulumi.Input<List<GroupContainerPort>>? ports;
  /// The definition of a readiness probe for this container as documented in the `readinessProbe` block below. Changing this forces a new resource to be created.
  final pulumi.Input<GroupContainerReadinessProbe>? readinessProbe;
  /// A list of sensitive environment variables to be set on the container. Specified as a map of name/value pairs. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? secureEnvironmentVariables;
  /// The definition of the security context for this container as documented in the `security` block below. Changing this forces a new resource to be created.
  final pulumi.Input<List<GroupContainerSecurity>>? securities;
  /// The definition of a volume mount for this container as documented in the `volume` block below. Changing this forces a new resource to be created.
  final pulumi.Input<List<GroupContainerVolume>>? volumes;

  /// Creates a new [GroupContainer].
  /// [commands] A list of commands which should be run on the container. Changing this forces a new resource to be created.
  /// [cpu] The required number of CPU cores of the containers. Changing this forces a new resource to be created.
  /// [cpuLimit] The upper limit of the number of CPU cores of the containers.
  /// [environmentVariables] A list of environment variables to be set on the container. Specified as a map of name/value pairs. Changing this forces a new resource to be created.
  /// [image] The container image name. Changing this forces a new resource to be created.
  /// [livenessProbe] The definition of a readiness probe for this container as documented in the `livenessProbe` block below. Changing this forces a new resource to be created.
  /// [memory] The required memory of the containers in GB. Changing this forces a new resource to be created.
  /// [memoryLimit] The upper limit of the memory of the containers in GB.
  /// [name] Specifies the name of the Container. Changing this forces a new resource to be created.
  /// [ports] A set of public ports for the container. Changing this forces a new resource to be created. Set as documented in the `ports` block below.
  /// [readinessProbe] The definition of a readiness probe for this container as documented in the `readinessProbe` block below. Changing this forces a new resource to be created.
  /// [secureEnvironmentVariables] A list of sensitive environment variables to be set on the container. Specified as a map of name/value pairs. Changing this forces a new resource to be created.
  /// [securities] The definition of the security context for this container as documented in the `security` block below. Changing this forces a new resource to be created.
  /// [volumes] The definition of a volume mount for this container as documented in the `volume` block below. Changing this forces a new resource to be created.
  const GroupContainer({
    this.commands,
    required this.cpu,
    this.cpuLimit,
    this.environmentVariables,
    required this.image,
    this.livenessProbe,
    required this.memory,
    this.memoryLimit,
    required this.name,
    this.ports,
    this.readinessProbe,
    this.secureEnvironmentVariables,
    this.securities,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
      'cpu': cpu,
      'cpuLimit': ?cpuLimit,
      'environmentVariables': ?environmentVariables,
      'image': image,
      'livenessProbe': ?pulumi.Input.mapOptionalInputValue<GroupContainerLivenessProbe, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'memory': memory,
      'memoryLimit': ?memoryLimit,
      'name': name,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<GroupContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<GroupContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readinessProbe': ?pulumi.Input.mapOptionalInputValue<GroupContainerReadinessProbe, Map<String, dynamic>>(readinessProbe, (value) => value.toMap()),
      'secureEnvironmentVariables': ?secureEnvironmentVariables,
      'securities': ?pulumi.Input.mapOptionalInputValue<List<GroupContainerSecurity>, List<Map<String, dynamic>>>(securities, (value) => pulumi.Input.encodeList<GroupContainerSecurity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<GroupContainerVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<GroupContainerVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GroupContainer.fromMap(Map<String, dynamic> map) {
    return GroupContainer(
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      cpuLimit: (() { final guardedValue = map['cpuLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      livenessProbe: (() { final guardedValue = map['livenessProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupContainerLivenessProbe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memory: pulumi.Input.fromValue(map['memory'] as double),
      memoryLimit: (() { final guardedValue = map['memoryLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupContainerPort>(guardedValue, (value) => GroupContainerPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      readinessProbe: (() { final guardedValue = map['readinessProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupContainerReadinessProbe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secureEnvironmentVariables: (() { final guardedValue = map['secureEnvironmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      securities: (() { final guardedValue = map['securities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupContainerSecurity>(guardedValue, (value) => GroupContainerSecurity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupContainerVolume>(guardedValue, (value) => GroupContainerVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
