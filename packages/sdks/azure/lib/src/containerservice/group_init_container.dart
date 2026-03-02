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
  GroupInitContainer({
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
      commands: map['commands'] == null ? null : ((map['commands']! as List).cast<String>()).input(),
      environmentVariables: map['environmentVariables'] == null ? null : ((map['environmentVariables']! as Map).cast<String, String>()).input(),
      image: (map['image'] as String).input(),
      name: (map['name'] as String).input(),
      secureEnvironmentVariables: map['secureEnvironmentVariables'] == null ? null : ((map['secureEnvironmentVariables']! as Map).cast<String, String>()).input(),
      securities: map['securities'] == null ? null : (pulumi.Input.decodeList<GroupInitContainerSecurity>(map['securities']!, (value) => GroupInitContainerSecurity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<GroupInitContainerVolume>(map['volumes']!, (value) => GroupInitContainerVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

