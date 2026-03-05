// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container runnable.
class Container {
  /// If set to true, external network access to and from container will be blocked, containers that are with block_external_network as true can still communicate with each other, network cannot be specified in the `container.options` field.
  final pulumi.Input<bool>? blockExternalNetwork;
  /// Overrides the `CMD` specified in the container. If there is an ENTRYPOINT (either in the container image or with the entrypoint field below) then commands are appended as arguments to the ENTRYPOINT.
  final pulumi.Input<List<String>>? commands;
  /// Overrides the `ENTRYPOINT` specified in the container.
  final pulumi.Input<String>? entrypoint;
  /// The URI to pull the container image from.
  final pulumi.Input<String>? imageUri;
  /// Arbitrary additional options to include in the "docker run" command when running this container, e.g. "--network host".
  final pulumi.Input<String>? options;
  /// Optional password for logging in to a docker registry. If password matches `projects/*/secrets/*/versions/*` then Batch will read the password from the Secret Manager;
  final pulumi.Input<String>? password;
  /// Optional username for logging in to a docker registry. If username matches `projects/*/secrets/*/versions/*` then Batch will read the username from the Secret Manager.
  final pulumi.Input<String>? username;
  /// Volumes to mount (bind mount) from the host machine files or directories into the container, formatted to match docker run's --volume option, e.g. /foo:/bar, or /foo:/bar:ro If the `TaskSpec.Volumes` field is specified but this field is not, Batch will mount each volume from the host machine to the container with the same mount path by default. In this case, the default mount option for containers will be read-only (ro) for existing persistent disks and read-write (rw) for other volume types, regardless of the original mount options specified in `TaskSpec.Volumes`. If you need different mount settings, you can explicitly configure them in this field.
  final pulumi.Input<List<String>>? volumes;

  /// Creates a new [Container].
  /// [blockExternalNetwork] If set to true, external network access to and from container will be blocked, containers that are with block_external_network as true can still communicate with each other, network cannot be specified in the `container.options` field.
  /// [commands] Overrides the `CMD` specified in the container. If there is an ENTRYPOINT (either in the container image or with the entrypoint field below) then commands are appended as arguments to the ENTRYPOINT.
  /// [entrypoint] Overrides the `ENTRYPOINT` specified in the container.
  /// [imageUri] The URI to pull the container image from.
  /// [options] Arbitrary additional options to include in the "docker run" command when running this container, e.g. "--network host".
  /// [password] Optional password for logging in to a docker registry. If password matches `projects/*/secrets/*/versions/*` then Batch will read the password from the Secret Manager;
  /// [username] Optional username for logging in to a docker registry. If username matches `projects/*/secrets/*/versions/*` then Batch will read the username from the Secret Manager.
  /// [volumes] Volumes to mount (bind mount) from the host machine files or directories into the container, formatted to match docker run's --volume option, e.g. /foo:/bar, or /foo:/bar:ro If the `TaskSpec.Volumes` field is specified but this field is not, Batch will mount each volume from the host machine to the container with the same mount path by default. In this case, the default mount option for containers will be read-only (ro) for existing persistent disks and read-write (rw) for other volume types, regardless of the original mount options specified in `TaskSpec.Volumes`. If you need different mount settings, you can explicitly configure them in this field.
  Container({
    this.blockExternalNetwork,
    this.commands,
    this.entrypoint,
    this.imageUri,
    this.options,
    this.password,
    this.username,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockExternalNetwork': ?blockExternalNetwork,
      'commands': ?commands,
      'entrypoint': ?entrypoint,
      'imageUri': ?imageUri,
      'options': ?options,
      'password': ?password,
      'username': ?username,
      'volumes': ?volumes,
    };
  }

  factory Container.fromMap(Map<String, dynamic> map) {
    return Container(
      blockExternalNetwork: (() { final guardedValue = map['blockExternalNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      entrypoint: (() { final guardedValue = map['entrypoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageUri: (() { final guardedValue = map['imageUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

