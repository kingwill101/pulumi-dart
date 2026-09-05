// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a vSphere volume resource.
class VsphereVirtualDiskVolumeSource {
  /// fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final pulumi.Input<String?>? fsType;
  /// storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
  final pulumi.Input<String?>? storagePolicyID;
  /// storagePolicyName is the storage Policy Based Management (SPBM) profile name.
  final pulumi.Input<String?>? storagePolicyName;
  /// volumePath is the path that identifies vSphere volume vmdk
  final pulumi.Input<String> volumePath;

  /// Creates a new [VsphereVirtualDiskVolumeSource].
  /// [fsType] fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  /// [storagePolicyID] storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
  /// [storagePolicyName] storagePolicyName is the storage Policy Based Management (SPBM) profile name.
  /// [volumePath] volumePath is the path that identifies vSphere volume vmdk
  const VsphereVirtualDiskVolumeSource({
    this.fsType,
    this.storagePolicyID,
    this.storagePolicyName,
    required this.volumePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'storagePolicyID': ?storagePolicyID,
      'storagePolicyName': ?storagePolicyName,
      'volumePath': volumePath,
    };
  }

  factory VsphereVirtualDiskVolumeSource.fromMap(Map<String, dynamic> map) {
    return VsphereVirtualDiskVolumeSource(
      fsType: (() { final guardedValue = map['fsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePolicyID: (() { final guardedValue = map['storagePolicyID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePolicyName: (() { final guardedValue = map['storagePolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumePath: pulumi.Input.fromValue(map['volumePath'] as String),
    );
  }
}
