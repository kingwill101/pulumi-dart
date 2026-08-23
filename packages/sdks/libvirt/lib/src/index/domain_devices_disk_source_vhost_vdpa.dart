// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskSourceVhostVdpa {
  /// Specifies the device to be used for the VHostVDPA source in the backing store.
  final pulumi.Input<String> dev;

  /// Creates a new [DomainDevicesDiskSourceVhostVdpa].
  /// [dev] Specifies the device to be used for the VHostVDPA source in the backing store.
  const DomainDevicesDiskSourceVhostVdpa({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory DomainDevicesDiskSourceVhostVdpa.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceVhostVdpa(
      dev: pulumi.Input.fromValue(map['dev'] as String),
    );
  }
}
