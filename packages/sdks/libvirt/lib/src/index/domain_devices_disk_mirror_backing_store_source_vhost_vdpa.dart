// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorBackingStoreSourceVhostVdpa {
  /// Specifies the device to be used for the VHostVDPA source in the backing store.
  final String dev;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceVhostVdpa].
  /// [dev] Specifies the device to be used for the VHostVDPA source in the backing store.
  DomainDevicesDiskMirrorBackingStoreSourceVhostVdpa({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceVhostVdpa.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceVhostVdpa(
      dev: map['dev'] as String,
    );
  }
}

