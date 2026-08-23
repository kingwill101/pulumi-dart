// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for attachment of the disk to a VM.
class VmAttachmentDetailsResponse {
  /// Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final pulumi.Input<String> deviceName;

  /// Creates a new [VmAttachmentDetailsResponse].
  /// [deviceName] Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  const VmAttachmentDetailsResponse({
    required this.deviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
    };
  }

  factory VmAttachmentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VmAttachmentDetailsResponse(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
    );
  }
}
