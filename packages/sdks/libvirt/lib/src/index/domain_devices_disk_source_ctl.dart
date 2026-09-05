// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskSourceCtl {
  final pulumi.Input<String> dev;

  /// Creates a new [DomainDevicesDiskSourceCtl].
  /// [dev] Required.
  const DomainDevicesDiskSourceCtl({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory DomainDevicesDiskSourceCtl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceCtl(
      dev: pulumi.Input.fromValue(map['dev'] as String),
    );
  }
}
