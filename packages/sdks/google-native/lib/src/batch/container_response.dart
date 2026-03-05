// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container runnable.
class ContainerResponse {
  /// If set to true, external network access to and from container will be blocked, containers that are with block_external_network as true can still communicate with each other, network cannot be specified in the `container.options` field.
  final pulumi.Input<bool> blockExternalNetwork;
  /// Overrides the `CMD` specified in the container. If there is an ENTRYPOINT (either in the container image or with the entrypoint field below) then commands are appended as arguments to the ENTRYPOINT.
  final pulumi.Input<List<String>> commands;
  /// Overrides the `ENTRYPOINT` specified in the container.
  final pulumi.Input<String> entrypoint;
  /// The URI to pull the container image from.
  final pulumi.Input<String> imageUri;
  /// Arbitrary additional options to include in the "docker run" command when running this container, e.g. "--network host".
  final pulumi.Input<String> options;
  /// Optional password for logging in to a docker registry. If password matches `projects/*/secrets/*/versions/*` then Batch will read the password from the Secret Manager;
  final pulumi.Input<String> password;
  /// Optional username for logging in to a docker registry. If username matches `projects/*/secrets/*/versions/*` then Batch will read the username from the Secret Manager.
  final pulumi.Input<String> username;
  /// Volumes to mount (bind mount) from the host machine files or directories into the container, formatted to match docker run's --volume option, e.g. /foo:/bar, or /foo:/bar:ro If the `TaskSpec.Volumes` field is specified but this field is not, Batch will mount each volume from the host machine to the container with the same mount path by default. In this case, the default mount option for containers will be read-only (ro) for existing persistent disks and read-write (rw) for other volume types, regardless of the original mount options specified in `TaskSpec.Volumes`. If you need different mount settings, you can explicitly configure them in this field.
  final pulumi.Input<List<String>> volumes;

  /// Creates a new [ContainerResponse].
  /// [blockExternalNetwork] If set to true, external network access to and from container will be blocked, containers that are with block_external_network as true can still communicate with each other, network cannot be specified in the `container.options` field.
  /// [commands] Overrides the `CMD` specified in the container. If there is an ENTRYPOINT (either in the container image or with the entrypoint field below) then commands are appended as arguments to the ENTRYPOINT.
  /// [entrypoint] Overrides the `ENTRYPOINT` specified in the container.
  /// [imageUri] The URI to pull the container image from.
  /// [options] Arbitrary additional options to include in the "docker run" command when running this container, e.g. "--network host".
  /// [password] Optional password for logging in to a docker registry. If password matches `projects/*/secrets/*/versions/*` then Batch will read the password from the Secret Manager;
  /// [username] Optional username for logging in to a docker registry. If username matches `projects/*/secrets/*/versions/*` then Batch will read the username from the Secret Manager.
  /// [volumes] Volumes to mount (bind mount) from the host machine files or directories into the container, formatted to match docker run's --volume option, e.g. /foo:/bar, or /foo:/bar:ro If the `TaskSpec.Volumes` field is specified but this field is not, Batch will mount each volume from the host machine to the container with the same mount path by default. In this case, the default mount option for containers will be read-only (ro) for existing persistent disks and read-write (rw) for other volume types, regardless of the original mount options specified in `TaskSpec.Volumes`. If you need different mount settings, you can explicitly configure them in this field.
  ContainerResponse({
    required this.blockExternalNetwork,
    required this.commands,
    required this.entrypoint,
    required this.imageUri,
    required this.options,
    required this.password,
    required this.username,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockExternalNetwork': blockExternalNetwork,
      'commands': commands,
      'entrypoint': entrypoint,
      'imageUri': imageUri,
      'options': options,
      'password': password,
      'username': username,
      'volumes': volumes,
    };
  }

  factory ContainerResponse.fromMap(Map<String, dynamic> map) {
    return ContainerResponse(
      blockExternalNetwork: pulumi.Input.fromValue(map['blockExternalNetwork'] as bool),
      commands: pulumi.Input.fromValue((map['commands'] as List).cast<String>()),
      entrypoint: pulumi.Input.fromValue(map['entrypoint'] as String),
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
      options: pulumi.Input.fromValue(map['options'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
      volumes: pulumi.Input.fromValue((map['volumes'] as List).cast<String>()),
    );
  }
}

