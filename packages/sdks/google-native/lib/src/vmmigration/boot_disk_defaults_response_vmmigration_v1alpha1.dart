// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_image_defaults_response_vmmigration_v1alpha1.dart';
import 'encryption_response_vmmigration_v1alpha1.dart';

/// BootDiskDefaults hold information about the boot disk of a VM.
class BootDiskDefaultsResponseVmmigrationV1alpha1 {
  /// Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final pulumi.Input<String> deviceName;
  /// Optional. The name of the disk.
  final pulumi.Input<String> diskName;
  /// Optional. The type of disk provisioning to use for the VM.
  final pulumi.Input<String> diskType;
  /// Optional. The encryption to apply to the boot disk.
  final pulumi.Input<EncryptionResponseVmmigrationV1alpha1> encryption;
  /// The image to use when creating the disk.
  final pulumi.Input<DiskImageDefaultsResponseVmmigrationV1alpha1> image;

  /// Creates a new [BootDiskDefaultsResponseVmmigrationV1alpha1].
  /// [deviceName] Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  /// [diskName] Optional. The name of the disk.
  /// [diskType] Optional. The type of disk provisioning to use for the VM.
  /// [encryption] Optional. The encryption to apply to the boot disk.
  /// [image] The image to use when creating the disk.
  const BootDiskDefaultsResponseVmmigrationV1alpha1({
    required this.deviceName,
    required this.diskName,
    required this.diskType,
    required this.encryption,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'diskName': diskName,
      'diskType': diskType,
      'encryption': pulumi.Input.mapInputValue<EncryptionResponseVmmigrationV1alpha1, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'image': pulumi.Input.mapInputValue<DiskImageDefaultsResponseVmmigrationV1alpha1, Map<String, dynamic>>(image, (value) => value.toMap()),
    };
  }

  factory BootDiskDefaultsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return BootDiskDefaultsResponseVmmigrationV1alpha1(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      diskName: pulumi.Input.fromValue(map['diskName'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      encryption: pulumi.Input.fromValue(EncryptionResponseVmmigrationV1alpha1.fromMap((map['encryption']! as Map).cast<String, dynamic>())),
      image: pulumi.Input.fromValue(DiskImageDefaultsResponseVmmigrationV1alpha1.fromMap((map['image']! as Map).cast<String, dynamic>())),
    );
  }
}

