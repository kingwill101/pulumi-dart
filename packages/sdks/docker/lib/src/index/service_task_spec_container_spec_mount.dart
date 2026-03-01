// ignore_for_file: unused_element, unnecessary_cast

import 'service_task_spec_container_spec_mount_bind_options.dart';
import 'service_task_spec_container_spec_mount_tmpfs_options.dart';
import 'service_task_spec_container_spec_mount_volume_options.dart';

class ServiceTaskSpecContainerSpecMount {
  /// Optional configuration for the bind type
  final ServiceTaskSpecContainerSpecMountBindOptions? bindOptions;
  /// Whether the mount should be read-only
  final bool? readOnly;
  /// Mount source (e.g. a volume name, a host path)
  final String? source;
  /// Container path
  final String target;
  /// Optional configuration for the tmpfs type
  final ServiceTaskSpecContainerSpecMountTmpfsOptions? tmpfsOptions;
  /// The mount type
  final String type;
  /// Optional configuration for the volume type
  final ServiceTaskSpecContainerSpecMountVolumeOptions? volumeOptions;

  /// Creates a new [ServiceTaskSpecContainerSpecMount].
  /// [bindOptions] Optional configuration for the bind type
  /// [readOnly] Whether the mount should be read-only
  /// [source] Mount source (e.g. a volume name, a host path)
  /// [target] Container path
  /// [tmpfsOptions] Optional configuration for the tmpfs type
  /// [type] The mount type
  /// [volumeOptions] Optional configuration for the volume type
  ServiceTaskSpecContainerSpecMount({
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
      'bindOptions': ?bindOptions == null ? null : bindOptions!.toMap(),
      'readOnly': ?readOnly,
      'source': ?source,
      'target': target,
      'tmpfsOptions': ?tmpfsOptions == null ? null : tmpfsOptions!.toMap(),
      'type': type,
      'volumeOptions': ?volumeOptions == null ? null : volumeOptions!.toMap(),
    };
  }

  factory ServiceTaskSpecContainerSpecMount.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecMount(
      bindOptions: map['bindOptions'] == null ? null : ServiceTaskSpecContainerSpecMountBindOptions.fromMap((map['bindOptions'] as Map).cast<String, dynamic>()),
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      source: map['source'] == null ? null : map['source'] as String,
      target: map['target'] as String,
      tmpfsOptions: map['tmpfsOptions'] == null ? null : ServiceTaskSpecContainerSpecMountTmpfsOptions.fromMap((map['tmpfsOptions'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      volumeOptions: map['volumeOptions'] == null ? null : ServiceTaskSpecContainerSpecMountVolumeOptions.fromMap((map['volumeOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

