// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_mount_volume_options_label.dart';

class ContainerMountVolumeOptions {
  /// Name of the driver to use to create the volume.
  final pulumi.Input<String>? driverName;
  /// key/value map of driver specific options.
  final pulumi.Input<Map<String, String>>? driverOptions;
  /// User-defined key/value metadata.
  final pulumi.Input<List<ContainerMountVolumeOptionsLabel>>? labels;
  /// Populate volume with data from the target.
  final pulumi.Input<bool>? noCopy;
  /// Path within the volume to mount. Requires docker server version 1.45 or higher.
  final pulumi.Input<String>? subpath;

  /// Creates a new [ContainerMountVolumeOptions].
  /// [driverName] Name of the driver to use to create the volume.
  /// [driverOptions] key/value map of driver specific options.
  /// [labels] User-defined key/value metadata.
  /// [noCopy] Populate volume with data from the target.
  /// [subpath] Path within the volume to mount. Requires docker server version 1.45 or higher.
  ContainerMountVolumeOptions({
    this.driverName,
    this.driverOptions,
    this.labels,
    this.noCopy,
    this.subpath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverName': ?driverName,
      'driverOptions': ?driverOptions,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<ContainerMountVolumeOptionsLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<ContainerMountVolumeOptionsLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'noCopy': ?noCopy,
      'subpath': ?subpath,
    };
  }

  factory ContainerMountVolumeOptions.fromMap(Map<String, dynamic> map) {
    return ContainerMountVolumeOptions(
      driverName: map['driverName'] == null ? null : (map['driverName'] as String).input(),
      driverOptions: map['driverOptions'] == null ? null : ((map['driverOptions'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<ContainerMountVolumeOptionsLabel>(map['labels'], (value) => ContainerMountVolumeOptionsLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      noCopy: map['noCopy'] == null ? null : (map['noCopy'] as bool).input(),
      subpath: map['subpath'] == null ? null : (map['subpath'] as String).input(),
    );
  }
}

