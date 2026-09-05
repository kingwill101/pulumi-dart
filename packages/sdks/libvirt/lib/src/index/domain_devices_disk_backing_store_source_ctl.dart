// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceCtl {
  final pulumi.Input<String> dev;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceCtl].
  /// [dev] Required.
  const DomainDevicesDiskBackingStoreSourceCtl({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceCtl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceCtl(
      dev: pulumi.Input.fromValue(map['dev'] as String),
    );
  }
}
