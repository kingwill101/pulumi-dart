// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boot_disk_defaults_disk_type.dart';
import 'disk_image_defaults.dart';
import 'encryption.dart';

/// BootDiskDefaults hold information about the boot disk of a VM.
class BootDiskDefaults {
  /// Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final pulumi.Input<String>? deviceName;
  /// Optional. The name of the disk.
  final pulumi.Input<String>? diskName;
  /// Optional. The type of disk provisioning to use for the VM.
  final pulumi.Input<BootDiskDefaultsDiskType>? diskType;
  /// Optional. The encryption to apply to the boot disk.
  final pulumi.Input<Encryption>? encryption;
  /// The image to use when creating the disk.
  final pulumi.Input<DiskImageDefaults>? image;

  /// Creates a new [BootDiskDefaults].
  /// [deviceName] Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  /// [diskName] Optional. The name of the disk.
  /// [diskType] Optional. The type of disk provisioning to use for the VM.
  /// [encryption] Optional. The encryption to apply to the boot disk.
  /// [image] The image to use when creating the disk.
  BootDiskDefaults({
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
      'diskType': ?pulumi.Input.mapOptionalInputValue<BootDiskDefaultsDiskType, String>(diskType, (value) => value.value),
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<DiskImageDefaults, Map<String, dynamic>>(image, (value) => value.toMap()),
    };
  }

  factory BootDiskDefaults.fromMap(Map<String, dynamic> map) {
    return BootDiskDefaults(
      deviceName: map['deviceName'] == null ? null : (map['deviceName']! as String).input(),
      diskName: map['diskName'] == null ? null : (map['diskName']! as String).input(),
      diskType: map['diskType'] == null ? null : (BootDiskDefaultsDiskType.fromValue(map['diskType']! as String)).input(),
      encryption: map['encryption'] == null ? null : (Encryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      image: map['image'] == null ? null : (DiskImageDefaults.fromMap((map['image']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

