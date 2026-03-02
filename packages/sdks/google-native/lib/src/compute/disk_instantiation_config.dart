// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_instantiation_config_instantiate_from.dart';

/// A specification of the desired way to instantiate a disk in the instance template when its created from a source instance.
class DiskInstantiationConfig {
  /// Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  final pulumi.Input<bool>? autoDelete;
  /// The custom source image to be used to restore this disk when instantiating this instance template.
  final pulumi.Input<String>? customImage;
  /// Specifies the device name of the disk to which the configurations apply to.
  final pulumi.Input<String>? deviceName;
  /// Specifies whether to include the disk and what image to use. Possible values are: - source-image: to use the same image that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - source-image-family: to use the same image family that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - custom-image: to use a user-provided image url for disk creation. Applicable to the boot disk and additional read-write disks. - attach-read-only: to attach a read-only disk. Applicable to read-only disks. - do-not-include: to exclude a disk from the template. Applicable to additional read-write disks, local SSDs, and read-only disks.
  final pulumi.Input<DiskInstantiationConfigInstantiateFrom>? instantiateFrom;

  /// Creates a new [DiskInstantiationConfig].
  /// [autoDelete] Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  /// [customImage] The custom source image to be used to restore this disk when instantiating this instance template.
  /// [deviceName] Specifies the device name of the disk to which the configurations apply to.
  /// [instantiateFrom] Specifies whether to include the disk and what image to use. Possible values are: - source-image: to use the same image that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - source-image-family: to use the same image family that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - custom-image: to use a user-provided image url for disk creation. Applicable to the boot disk and additional read-write disks. - attach-read-only: to attach a read-only disk. Applicable to read-only disks. - do-not-include: to exclude a disk from the template. Applicable to additional read-write disks, local SSDs, and read-only disks.
  DiskInstantiationConfig({
    this.autoDelete,
    this.customImage,
    this.deviceName,
    this.instantiateFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDelete': ?autoDelete,
      'customImage': ?customImage,
      'deviceName': ?deviceName,
      'instantiateFrom': ?pulumi.Input.mapOptionalInputValue<DiskInstantiationConfigInstantiateFrom, String>(instantiateFrom, (value) => value.value),
    };
  }

  factory DiskInstantiationConfig.fromMap(Map<String, dynamic> map) {
    return DiskInstantiationConfig(
      autoDelete: map['autoDelete'] == null ? null : (map['autoDelete']! as bool).input(),
      customImage: map['customImage'] == null ? null : (map['customImage']! as String).input(),
      deviceName: map['deviceName'] == null ? null : (map['deviceName']! as String).input(),
      instantiateFrom: map['instantiateFrom'] == null ? null : (DiskInstantiationConfigInstantiateFrom.fromValue(map['instantiateFrom']! as String)).input(),
    );
  }
}

