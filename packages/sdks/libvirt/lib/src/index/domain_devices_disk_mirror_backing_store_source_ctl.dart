// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorBackingStoreSourceCtl {
  final pulumi.Input<String> dev;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceCtl].
  /// [dev] Required.
  const DomainDevicesDiskMirrorBackingStoreSourceCtl({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceCtl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceCtl(
      dev: pulumi.Input.fromValue(map['dev'] as String),
    );
  }
}
