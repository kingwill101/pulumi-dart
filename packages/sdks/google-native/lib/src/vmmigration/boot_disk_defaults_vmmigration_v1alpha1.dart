// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boot_disk_defaults_disk_type_vmmigration_v1alpha1.dart';
import 'disk_image_defaults_vmmigration_v1alpha1.dart';
import 'encryption_vmmigration_v1alpha1.dart';

/// BootDiskDefaults hold information about the boot disk of a VM.
class BootDiskDefaultsVmmigrationV1alpha1 {
  /// Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final pulumi.Input<String>? deviceName;
  /// Optional. The name of the disk.
  final pulumi.Input<String>? diskName;
  /// Optional. The type of disk provisioning to use for the VM.
  final pulumi.Input<BootDiskDefaultsDiskTypeVmmigrationV1alpha1>? diskType;
  /// Optional. The encryption to apply to the boot disk.
  final pulumi.Input<EncryptionVmmigrationV1alpha1>? encryption;
  /// The image to use when creating the disk.
  final pulumi.Input<DiskImageDefaultsVmmigrationV1alpha1>? image;

  /// Creates a new [BootDiskDefaultsVmmigrationV1alpha1].
  /// [deviceName] Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  /// [diskName] Optional. The name of the disk.
  /// [diskType] Optional. The type of disk provisioning to use for the VM.
  /// [encryption] Optional. The encryption to apply to the boot disk.
  /// [image] The image to use when creating the disk.
  BootDiskDefaultsVmmigrationV1alpha1({
    this.deviceName,
    this.diskName,
    this.diskType,
    this.encryption,
    this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'diskName': ?diskName,
      'diskType': ?pulumi.Input.mapOptionalInputValue<BootDiskDefaultsDiskTypeVmmigrationV1alpha1, String>(diskType, (value) => value.wireValue),
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionVmmigrationV1alpha1, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<DiskImageDefaultsVmmigrationV1alpha1, Map<String, dynamic>>(image, (value) => value.toMap()),
    };
  }

  factory BootDiskDefaultsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return BootDiskDefaultsVmmigrationV1alpha1(
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskName: (() { final guardedValue = map['diskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BootDiskDefaultsDiskTypeVmmigrationV1alpha1.fromValue(guardedValue as String)); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskImageDefaultsVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

