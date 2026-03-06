// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkstationConfigContainer {
  /// Arguments passed to the entrypoint.
  final pulumi.Input<List<String>>? args;
  /// If set, overrides the default ENTRYPOINT specified by the image.
  final pulumi.Input<List<String>>? commands;
  /// Environment variables passed to the container.
  /// The elements are of the form "KEY=VALUE" for the environment variable "KEY" being given the value "VALUE".
  final pulumi.Input<Map<String, String>>? env;
  /// Docker image defining the container. This image must be accessible by the config's service account.
  final pulumi.Input<String>? image;
  /// If set, overrides the USER specified in the image with the given uid.
  final pulumi.Input<int>? runAsUser;
  /// If set, overrides the default DIR specified by the image.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [WorkstationConfigContainer].
  /// [args] Arguments passed to the entrypoint.
  /// [commands] If set, overrides the default ENTRYPOINT specified by the image.
  /// [env] Environment variables passed to the container.
  /// [image] Docker image defining the container. This image must be accessible by the config's service account.
  /// [runAsUser] If set, overrides the USER specified in the image with the given uid.
  /// [workingDir] If set, overrides the default DIR specified by the image.
  const WorkstationConfigContainer({
    this.args,
    this.commands,
    this.env,
    this.image,
    this.runAsUser,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'env': ?env,
      'image': ?image,
      'runAsUser': ?runAsUser,
      'workingDir': ?workingDir,
    };
  }

  factory WorkstationConfigContainer.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigContainer(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runAsUser: (() { final guardedValue = map['runAsUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      workingDir: (() { final guardedValue = map['workingDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

