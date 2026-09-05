// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_task_spec_container_spec_mount_volume_options_label.dart';

class ServiceTaskSpecContainerSpecMountVolumeOptions {
  /// Name of the driver to use to create the volume
  final pulumi.Input<String?>? driverName;
  /// key/value map of driver specific options
  final pulumi.Input<Map<String, String>?>? driverOptions;
  /// User-defined key/value metadata
  final pulumi.Input<List<ServiceTaskSpecContainerSpecMountVolumeOptionsLabel>?>? labels;
  /// Populate volume with data from the target
  final pulumi.Input<bool?>? noCopy;

  /// Creates a new [ServiceTaskSpecContainerSpecMountVolumeOptions].
  /// [driverName] Name of the driver to use to create the volume
  /// [driverOptions] key/value map of driver specific options
  /// [labels] User-defined key/value metadata
  /// [noCopy] Populate volume with data from the target
  const ServiceTaskSpecContainerSpecMountVolumeOptions({
    this.driverName,
    this.driverOptions,
    this.labels,
    this.noCopy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverName': ?driverName,
      'driverOptions': ?driverOptions,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<ServiceTaskSpecContainerSpecMountVolumeOptionsLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<ServiceTaskSpecContainerSpecMountVolumeOptionsLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'noCopy': ?noCopy,
    };
  }

  factory ServiceTaskSpecContainerSpecMountVolumeOptions.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecMountVolumeOptions(
      driverName: (() { final guardedValue = map['driverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driverOptions: (() { final guardedValue = map['driverOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceTaskSpecContainerSpecMountVolumeOptionsLabel>(guardedValue, (value) => ServiceTaskSpecContainerSpecMountVolumeOptionsLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      noCopy: (() { final guardedValue = map['noCopy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
