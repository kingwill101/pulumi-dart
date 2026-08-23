// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_init_container_security.dart';
import 'group_init_container_volume.dart';

class GroupInitContainer {
  /// A list of commands which should be run on the container. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? commands;
  /// A list of environment variables to be set on the container. Specified as a map of name/value pairs. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// The container image name. Changing this forces a new resource to be created.
  final pulumi.Input<String> image;
  /// Specifies the name of the Container. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// A list of sensitive environment variables to be set on the container. Specified as a map of name/value pairs. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? secureEnvironmentVariables;
  /// The definition of the security context for this container as documented in the `security` block below. Changing this forces a new resource to be created.
  final pulumi.Input<List<GroupInitContainerSecurity>>? securities;
  /// The definition of a volume mount for this container as documented in the `volume` block below. Changing this forces a new resource to be created.
  final pulumi.Input<List<GroupInitContainerVolume>>? volumes;

  /// Creates a new [GroupInitContainer].
  /// [commands] A list of commands which should be run on the container. Changing this forces a new resource to be created.
  /// [environmentVariables] A list of environment variables to be set on the container. Specified as a map of name/value pairs. Changing this forces a new resource to be created.
  /// [image] The container image name. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Container. Changing this forces a new resource to be created.
  /// [secureEnvironmentVariables] A list of sensitive environment variables to be set on the container. Specified as a map of name/value pairs. Changing this forces a new resource to be created.
  /// [securities] The definition of the security context for this container as documented in the `security` block below. Changing this forces a new resource to be created.
  /// [volumes] The definition of a volume mount for this container as documented in the `volume` block below. Changing this forces a new resource to be created.
  const GroupInitContainer({
    this.commands,
    this.environmentVariables,
    required this.image,
    required this.name,
    this.secureEnvironmentVariables,
    this.securities,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
      'environmentVariables': ?environmentVariables,
      'image': image,
      'name': name,
      'secureEnvironmentVariables': ?secureEnvironmentVariables,
      'securities': ?pulumi.Input.mapOptionalInputValue<List<GroupInitContainerSecurity>, List<Map<String, dynamic>>>(securities, (value) => pulumi.Input.encodeList<GroupInitContainerSecurity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<GroupInitContainerVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<GroupInitContainerVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GroupInitContainer.fromMap(Map<String, dynamic> map) {
    return GroupInitContainer(
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      secureEnvironmentVariables: (() { final guardedValue = map['secureEnvironmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      securities: (() { final guardedValue = map['securities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupInitContainerSecurity>(guardedValue, (value) => GroupInitContainerSecurity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupInitContainerVolume>(guardedValue, (value) => GroupInitContainerVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
