// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_mount_bind_options.dart';
import 'container_mount_tmpfs_options.dart';
import 'container_mount_volume_options.dart';

class ContainerMount {
  /// Optional configuration for the bind type.
  final pulumi.Input<ContainerMountBindOptions?>? bindOptions;
  /// Whether the mount should be read-only.
  final pulumi.Input<bool?>? readOnly;
  /// Mount source (e.g. a volume name, a host path).
  final pulumi.Input<String?>? source;
  /// Container path
  final pulumi.Input<String> target;
  /// Optional configuration for the tmpfs type.
  final pulumi.Input<ContainerMountTmpfsOptions?>? tmpfsOptions;
  /// The mount type
  final pulumi.Input<String> type;
  /// Optional configuration for the volume type.
  final pulumi.Input<ContainerMountVolumeOptions?>? volumeOptions;

  /// Creates a new [ContainerMount].
  /// [bindOptions] Optional configuration for the bind type.
  /// [readOnly] Whether the mount should be read-only.
  /// [source] Mount source (e.g. a volume name, a host path).
  /// [target] Container path
  /// [tmpfsOptions] Optional configuration for the tmpfs type.
  /// [type] The mount type
  /// [volumeOptions] Optional configuration for the volume type.
  const ContainerMount({
    this.bindOptions,
    this.readOnly,
    this.source,
    required this.target,
    this.tmpfsOptions,
    required this.type,
    this.volumeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindOptions': ?pulumi.Input.mapOptionalInputValue<ContainerMountBindOptions, Map<String, dynamic>>(bindOptions, (value) => value.toMap()),
      'readOnly': ?readOnly,
      'source': ?source,
      'target': target,
      'tmpfsOptions': ?pulumi.Input.mapOptionalInputValue<ContainerMountTmpfsOptions, Map<String, dynamic>>(tmpfsOptions, (value) => value.toMap()),
      'type': type,
      'volumeOptions': ?pulumi.Input.mapOptionalInputValue<ContainerMountVolumeOptions, Map<String, dynamic>>(volumeOptions, (value) => value.toMap()),
    };
  }

  factory ContainerMount.fromMap(Map<String, dynamic> map) {
    return ContainerMount(
      bindOptions: (() { final guardedValue = map['bindOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerMountBindOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: pulumi.Input.fromValue(map['target'] as String),
      tmpfsOptions: (() { final guardedValue = map['tmpfsOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerMountTmpfsOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      volumeOptions: (() { final guardedValue = map['volumeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerMountVolumeOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
