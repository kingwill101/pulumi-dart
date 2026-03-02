// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_image_defaults_response.dart';
import 'encryption_response.dart';

/// BootDiskDefaults hold information about the boot disk of a VM.
class BootDiskDefaultsResponse {
  /// Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final pulumi.Input<String> deviceName;
  /// Optional. The name of the disk.
  final pulumi.Input<String> diskName;
  /// Optional. The type of disk provisioning to use for the VM.
  final pulumi.Input<String> diskType;
  /// Optional. The encryption to apply to the boot disk.
  final pulumi.Input<EncryptionResponse> encryption;
  /// The image to use when creating the disk.
  final pulumi.Input<DiskImageDefaultsResponse> image;

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
      'encryption': pulumi.Input.mapInputValue<EncryptionResponse, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'image': pulumi.Input.mapInputValue<DiskImageDefaultsResponse, Map<String, dynamic>>(image, (value) => value.toMap()),
    };
  }

  factory BootDiskDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return BootDiskDefaultsResponse(
      deviceName: (map['deviceName'] as String).input(),
      diskName: (map['diskName'] as String).input(),
      diskType: (map['diskType'] as String).input(),
      encryption: (EncryptionResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      image: (DiskImageDefaultsResponse.fromMap((map['image'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

