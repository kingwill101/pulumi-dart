// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_task_spec_container_spec_mount_volume_options_label.dart';

class ServiceTaskSpecContainerSpecMountVolumeOptions {
  /// Name of the driver to use to create the volume
  final String? driverName;
  /// key/value map of driver specific options
  final Map<String, String>? driverOptions;
  /// User-defined key/value metadata
  final List<ServiceTaskSpecContainerSpecMountVolumeOptionsLabel>? labels;
  /// Populate volume with data from the target
  final bool? noCopy;

  /// Creates a new [ServiceTaskSpecContainerSpecMountVolumeOptions].
  /// [driverName] Name of the driver to use to create the volume
  /// [driverOptions] key/value map of driver specific options
  /// [labels] User-defined key/value metadata
  /// [noCopy] Populate volume with data from the target
  ServiceTaskSpecContainerSpecMountVolumeOptions({
    this.driverName,
    this.driverOptions,
    this.labels,
    this.noCopy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverName': ?driverName,
      'driverOptions': ?driverOptions,
      'labels': ?labels == null ? null : pulumi.Input.encodeList<ServiceTaskSpecContainerSpecMountVolumeOptionsLabel, Map<String, dynamic>>(labels!, (value) => value.toMap()),
      'noCopy': ?noCopy,
    };
  }

  factory ServiceTaskSpecContainerSpecMountVolumeOptions.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecMountVolumeOptions(
      driverName: map['driverName'] == null ? null : map['driverName'] as String,
      driverOptions: map['driverOptions'] == null ? null : (map['driverOptions'] as Map).cast<String, String>(),
      labels: map['labels'] == null ? null : pulumi.Input.decodeList<ServiceTaskSpecContainerSpecMountVolumeOptionsLabel>(map['labels'], (value) => ServiceTaskSpecContainerSpecMountVolumeOptionsLabel.fromMap((value as Map).cast<String, dynamic>())),
      noCopy: map['noCopy'] == null ? null : map['noCopy'] as bool,
    );
  }
}

