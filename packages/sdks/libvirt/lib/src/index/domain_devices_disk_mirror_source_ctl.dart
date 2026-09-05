// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorSourceCtl {
  final pulumi.Input<String> dev;

  /// Creates a new [DomainDevicesDiskMirrorSourceCtl].
  /// [dev] Required.
  const DomainDevicesDiskMirrorSourceCtl({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory DomainDevicesDiskMirrorSourceCtl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceCtl(
      dev: pulumi.Input.fromValue(map['dev'] as String),
    );
  }
}
