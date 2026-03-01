// ignore_for_file: unused_element, unnecessary_cast


/// AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
class AzureDiskVolumeSourcePatch {
  /// cachingMode is the Host Caching mode: None, Read Only, Read Write.
  final String? cachingMode;
  /// diskName is the Name of the data disk in the blob storage
  final String? diskName;
  /// diskURI is the URI of data disk in the blob storage
  final String? diskURI;
  /// fsType is Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;
  /// kind expected values are Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared
  final String? kind;
  /// readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// Creates a new [AzureDiskVolumeSourcePatch].
  /// [cachingMode] cachingMode is the Host Caching mode: None, Read Only, Read Write.
  /// [diskName] diskName is the Name of the data disk in the blob storage
  /// [diskURI] diskURI is the URI of data disk in the blob storage
  /// [fsType] fsType is Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  /// [kind] kind expected values are Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared
  /// [readOnly] readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  AzureDiskVolumeSourcePatch({
    this.cachingMode,
    this.diskName,
    this.diskURI,
    this.fsType,
    this.kind,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachingMode': ?cachingMode,
      'diskName': ?diskName,
      'diskURI': ?diskURI,
      'fsType': ?fsType,
      'kind': ?kind,
      'readOnly': ?readOnly,
    };
  }

  factory AzureDiskVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return AzureDiskVolumeSourcePatch(
      cachingMode: map['cachingMode'] == null ? null : map['cachingMode'] as String,
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskURI: map['diskURI'] == null ? null : map['diskURI'] as String,
      fsType: map['fsType'] == null ? null : map['fsType'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}

