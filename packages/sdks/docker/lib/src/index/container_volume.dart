// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerVolume {
  /// The path in the container where the volume will be mounted.
  final pulumi.Input<String>? containerPath;
  /// The container where the volume is coming from.
  final pulumi.Input<String>? fromContainer;
  /// The path on the host where the volume is coming from.
  final pulumi.Input<String>? hostPath;
  /// If `true`, this volume will be readonly. Defaults to `false`.
  final pulumi.Input<bool>? readOnly;
  /// The name of the docker volume which should be mounted.
  final pulumi.Input<String>? volumeName;

  /// Creates a new [ContainerVolume].
  /// [containerPath] The path in the container where the volume will be mounted.
  /// [fromContainer] The container where the volume is coming from.
  /// [hostPath] The path on the host where the volume is coming from.
  /// [readOnly] If `true`, this volume will be readonly. Defaults to `false`.
  /// [volumeName] The name of the docker volume which should be mounted.
  ContainerVolume({
    this.containerPath,
    this.fromContainer,
    this.hostPath,
    this.readOnly,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': ?containerPath,
      'fromContainer': ?fromContainer,
      'hostPath': ?hostPath,
      'readOnly': ?readOnly,
      'volumeName': ?volumeName,
    };
  }

  factory ContainerVolume.fromMap(Map<String, dynamic> map) {
    return ContainerVolume(
      containerPath: map['containerPath'] == null ? null : (map['containerPath']! as String).input(),
      fromContainer: map['fromContainer'] == null ? null : (map['fromContainer']! as String).input(),
      hostPath: map['hostPath'] == null ? null : (map['hostPath']! as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
      volumeName: map['volumeName'] == null ? null : (map['volumeName']! as String).input(),
    );
  }
}

