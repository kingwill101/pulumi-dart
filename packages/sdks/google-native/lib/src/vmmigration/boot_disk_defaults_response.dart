// ignore_for_file: unused_element, unnecessary_cast

import 'disk_image_defaults_response.dart';
import 'encryption_response.dart';

/// BootDiskDefaults hold information about the boot disk of a VM.
class BootDiskDefaultsResponse {
  /// Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final String deviceName;
  /// Optional. The name of the disk.
  final String diskName;
  /// Optional. The type of disk provisioning to use for the VM.
  final String diskType;
  /// Optional. The encryption to apply to the boot disk.
  final EncryptionResponse encryption;
  /// The image to use when creating the disk.
  final DiskImageDefaultsResponse image;

  /// Creates a new [BootDiskDefaultsResponse].
  /// [deviceName] Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  /// [diskName] Optional. The name of the disk.
  /// [diskType] Optional. The type of disk provisioning to use for the VM.
  /// [encryption] Optional. The encryption to apply to the boot disk.
  /// [image] The image to use when creating the disk.
  BootDiskDefaultsResponse({
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
      'encryption': encryption.toMap(),
      'image': image.toMap(),
    };
  }

  factory BootDiskDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return BootDiskDefaultsResponse(
      deviceName: map['deviceName'] as String,
      diskName: map['diskName'] as String,
      diskType: map['diskType'] as String,
      encryption: EncryptionResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      image: DiskImageDefaultsResponse.fromMap((map['image'] as Map).cast<String, dynamic>()),
    );
  }
}

