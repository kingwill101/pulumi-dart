// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomTargetTypeTasksDeployContainer {
  /// Args is the container arguments to use. This overrides the default arguments defined in the container image.
  final pulumi.Input<List<String>>? args;
  /// Command is the container entrypoint to use. This overrides the default entrypoint defined in the container image.
  final pulumi.Input<List<String>>? commands;
  /// Environment variables that are set in the container.
  final pulumi.Input<Map<String, String>>? env;
  /// Image is the container image to use.
  final pulumi.Input<String> image;

  /// Creates a new [CustomTargetTypeTasksDeployContainer].
  /// [args] Args is the container arguments to use. This overrides the default arguments defined in the container image.
  /// [commands] Command is the container entrypoint to use. This overrides the default entrypoint defined in the container image.
  /// [env] Environment variables that are set in the container.
  /// [image] Image is the container image to use.
  const CustomTargetTypeTasksDeployContainer({
    this.args,
    this.commands,
    this.env,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'env': ?env,
      'image': image,
    };
  }

  factory CustomTargetTypeTasksDeployContainer.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeTasksDeployContainer(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
    );
  }
}
