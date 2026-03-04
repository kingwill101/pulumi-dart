// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceVhostVdpa {
  /// Specifies the device to be used for the VHostVDPA source in the backing store.
  final pulumi.Input<String> dev;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceVhostVdpa].
  /// [dev] Specifies the device to be used for the VHostVDPA source in the backing store.
  DomainDevicesDiskBackingStoreSourceVhostVdpa({required this.dev});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dev': dev};
  }

  factory DomainDevicesDiskBackingStoreSourceVhostVdpa.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskBackingStoreSourceVhostVdpa(
      dev: pulumi.Input.fromValue(map['dev'] as String),
    );
  }
}
