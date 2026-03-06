// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerBuildStepVolume {
  /// Name of the volume to mount.
  /// Volume names must be unique per build step and must be valid names for Docker volumes.
  /// Each named volume must be used by at least two build steps.
  final pulumi.Input<String> name;
  /// Path at which to mount the volume.
  /// Paths must be absolute and cannot conflict with other volume paths on the same
  /// build step or with certain reserved volume paths.
  final pulumi.Input<String> path;

  /// Creates a new [TriggerBuildStepVolume].
  /// [name] Name of the volume to mount.
  /// [path] Path at which to mount the volume.
  const TriggerBuildStepVolume({
    required this.name,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
    };
  }

  factory TriggerBuildStepVolume.fromMap(Map<String, dynamic> map) {
    return TriggerBuildStepVolume(
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

