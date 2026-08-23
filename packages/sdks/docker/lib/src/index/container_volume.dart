// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerVolume {
  /// The path in the container where the volume will be mounted.
  final pulumi.Input<String>? containerPath;
  /// The container where the volume is coming from.
  final pulumi.Input<String>? fromContainer;
  /// The path on the host where the volume is coming from. If `hostPath` is set, it takes precedence over `volumeName`.
  final pulumi.Input<String>? hostPath;
  /// If `true`, this volume will be readonly. Defaults to `false`.
  final pulumi.Input<bool>? readOnly;
  /// SELinux relabel mode for bind mounts. Supported values are `z` and `Z`.
  final pulumi.Input<String>? selinuxRelabel;
  /// The name of the docker volume which should be mounted. Ignored when `hostPath` is set.
  final pulumi.Input<String>? volumeName;

  /// Creates a new [ContainerVolume].
  /// [containerPath] The path in the container where the volume will be mounted.
  /// [fromContainer] The container where the volume is coming from.
  /// [hostPath] The path on the host where the volume is coming from. If `hostPath` is set, it takes precedence over `volumeName`.
  /// [readOnly] If `true`, this volume will be readonly. Defaults to `false`.
  /// [selinuxRelabel] SELinux relabel mode for bind mounts. Supported values are `z` and `Z`.
  /// [volumeName] The name of the docker volume which should be mounted. Ignored when `hostPath` is set.
  const ContainerVolume({
    this.containerPath,
    this.fromContainer,
    this.hostPath,
    this.readOnly,
    this.selinuxRelabel,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': ?containerPath,
      'fromContainer': ?fromContainer,
      'hostPath': ?hostPath,
      'readOnly': ?readOnly,
      'selinuxRelabel': ?selinuxRelabel,
      'volumeName': ?volumeName,
    };
  }

  factory ContainerVolume.fromMap(Map<String, dynamic> map) {
    return ContainerVolume(
      containerPath: (() { final guardedValue = map['containerPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fromContainer: (() { final guardedValue = map['fromContainer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostPath: (() { final guardedValue = map['hostPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      selinuxRelabel: (() { final guardedValue = map['selinuxRelabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeName: (() { final guardedValue = map['volumeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
