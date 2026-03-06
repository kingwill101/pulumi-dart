// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Photon Controller persistent disk resource.
class PhotonPersistentDiskVolumeSourcePatch {
  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final pulumi.Input<String>? fsType;
  /// pdID is the ID that identifies Photon Controller persistent disk
  final pulumi.Input<String>? pdID;

  /// Creates a new [PhotonPersistentDiskVolumeSourcePatch].
  /// [fsType] fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  /// [pdID] pdID is the ID that identifies Photon Controller persistent disk
  const PhotonPersistentDiskVolumeSourcePatch({
    this.fsType,
    this.pdID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'pdID': ?pdID,
    };
  }

  factory PhotonPersistentDiskVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return PhotonPersistentDiskVolumeSourcePatch(
      fsType: (() { final guardedValue = map['fsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pdID: (() { final guardedValue = map['pdID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

