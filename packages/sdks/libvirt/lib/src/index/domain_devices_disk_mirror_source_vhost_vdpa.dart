// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorSourceVhostVdpa {
  /// Specifies the device to be used for the VHostVDPA source in the backing store.
  final pulumi.Input<String> dev;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostVdpa].
  /// [dev] Specifies the device to be used for the VHostVDPA source in the backing store.
  const DomainDevicesDiskMirrorSourceVhostVdpa({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory DomainDevicesDiskMirrorSourceVhostVdpa.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostVdpa(
      dev: pulumi.Input.fromValue(map['dev'] as String),
    );
  }
}
