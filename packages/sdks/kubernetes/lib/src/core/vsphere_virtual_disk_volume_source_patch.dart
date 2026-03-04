// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a vSphere volume resource.
class VsphereVirtualDiskVolumeSourcePatch {
  /// fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final pulumi.Input<String>? fsType;

  /// storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
  final pulumi.Input<String>? storagePolicyID;

  /// storagePolicyName is the storage Policy Based Management (SPBM) profile name.
  final pulumi.Input<String>? storagePolicyName;

  /// volumePath is the path that identifies vSphere volume vmdk
  final pulumi.Input<String>? volumePath;

  /// Creates a new [VsphereVirtualDiskVolumeSourcePatch].
  /// [fsType] fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  /// [storagePolicyID] storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
  /// [storagePolicyName] storagePolicyName is the storage Policy Based Management (SPBM) profile name.
  /// [volumePath] volumePath is the path that identifies vSphere volume vmdk
  VsphereVirtualDiskVolumeSourcePatch({
    this.fsType,
    this.storagePolicyID,
    this.storagePolicyName,
    this.volumePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'storagePolicyID': ?storagePolicyID,
      'storagePolicyName': ?storagePolicyName,
      'volumePath': ?volumePath,
    };
  }

  factory VsphereVirtualDiskVolumeSourcePatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return VsphereVirtualDiskVolumeSourcePatch(
      fsType: (() {
        final guardedValue = map['fsType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storagePolicyID: (() {
        final guardedValue = map['storagePolicyID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storagePolicyName: (() {
        final guardedValue = map['storagePolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumePath: (() {
        final guardedValue = map['volumePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
