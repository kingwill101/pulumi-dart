// ignore_for_file: unused_element, unnecessary_cast


/// Represents a Photon Controller persistent disk resource.
class PhotonPersistentDiskVolumeSource {
  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;
  /// pdID is the ID that identifies Photon Controller persistent disk
  final String pdID;

  /// Creates a new [PhotonPersistentDiskVolumeSource].
  /// [fsType] fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  /// [pdID] pdID is the ID that identifies Photon Controller persistent disk
  PhotonPersistentDiskVolumeSource({
    this.fsType,
    required this.pdID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'pdID': pdID,
    };
  }

  factory PhotonPersistentDiskVolumeSource.fromMap(Map<String, dynamic> map) {
    return PhotonPersistentDiskVolumeSource(
      fsType: map['fsType'] == null ? null : map['fsType'] as String,
      pdID: map['pdID'] as String,
    );
  }
}

