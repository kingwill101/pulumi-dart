// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorBackingStoreSourceVhostVdpa {
  /// Specifies the device to be used for the VHostVDPA source in the backing store.
  final pulumi.Input<String> dev;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceVhostVdpa].
  /// [dev] Specifies the device to be used for the VHostVDPA source in the backing store.
  DomainDevicesDiskMirrorBackingStoreSourceVhostVdpa({required this.dev});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dev': dev};
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceVhostVdpa.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskMirrorBackingStoreSourceVhostVdpa(
      dev: pulumi.Input.fromValue(map['dev'] as String),
    );
  }
}
