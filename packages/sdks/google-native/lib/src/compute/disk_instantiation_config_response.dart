// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A specification of the desired way to instantiate a disk in the instance template when its created from a source instance.
class DiskInstantiationConfigResponse {
  /// Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  final pulumi.Input<bool> autoDelete;
  /// The custom source image to be used to restore this disk when instantiating this instance template.
  final pulumi.Input<String> customImage;
  /// Specifies the device name of the disk to which the configurations apply to.
  final pulumi.Input<String> deviceName;
  /// Specifies whether to include the disk and what image to use. Possible values are: - source-image: to use the same image that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - source-image-family: to use the same image family that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - custom-image: to use a user-provided image url for disk creation. Applicable to the boot disk and additional read-write disks. - attach-read-only: to attach a read-only disk. Applicable to read-only disks. - do-not-include: to exclude a disk from the template. Applicable to additional read-write disks, local SSDs, and read-only disks.
  final pulumi.Input<String> instantiateFrom;

  /// Creates a new [DiskInstantiationConfigResponse].
  /// [autoDelete] Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  /// [customImage] The custom source image to be used to restore this disk when instantiating this instance template.
  /// [deviceName] Specifies the device name of the disk to which the configurations apply to.
  /// [instantiateFrom] Specifies whether to include the disk and what image to use. Possible values are: - source-image: to use the same image that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - source-image-family: to use the same image family that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - custom-image: to use a user-provided image url for disk creation. Applicable to the boot disk and additional read-write disks. - attach-read-only: to attach a read-only disk. Applicable to read-only disks. - do-not-include: to exclude a disk from the template. Applicable to additional read-write disks, local SSDs, and read-only disks.
  DiskInstantiationConfigResponse({
    required this.autoDelete,
    required this.customImage,
    required this.deviceName,
    required this.instantiateFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDelete': autoDelete,
      'customImage': customImage,
      'deviceName': deviceName,
      'instantiateFrom': instantiateFrom,
    };
  }

  factory DiskInstantiationConfigResponse.fromMap(Map<String, dynamic> map) {
    return DiskInstantiationConfigResponse(
      autoDelete: (map['autoDelete'] as bool).input(),
      customImage: (map['customImage'] as String).input(),
      deviceName: (map['deviceName'] as String).input(),
      instantiateFrom: (map['instantiateFrom'] as String).input(),
    );
  }
}

