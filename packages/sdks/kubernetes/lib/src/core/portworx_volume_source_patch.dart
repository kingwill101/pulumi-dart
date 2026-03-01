// ignore_for_file: unused_element, unnecessary_cast


/// PortworxVolumeSource represents a Portworx volume resource.
class PortworxVolumeSourcePatch {
  /// fSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;
  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;
  /// volumeID uniquely identifies a Portworx volume
  final String? volumeID;

  /// Creates a new [PortworxVolumeSourcePatch].
  /// [fsType] fSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
  /// [readOnly] readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  /// [volumeID] volumeID uniquely identifies a Portworx volume
  PortworxVolumeSourcePatch({
    this.fsType,
    this.readOnly,
    this.volumeID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'readOnly': ?readOnly,
      'volumeID': ?volumeID,
    };
  }

  factory PortworxVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return PortworxVolumeSourcePatch(
      fsType: map['fsType'] == null ? null : map['fsType'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      volumeID: map['volumeID'] == null ? null : map['volumeID'] as String,
    );
  }
}

