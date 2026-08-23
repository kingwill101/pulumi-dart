// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsBootDevice {
  /// Specifies the device type for booting the domain.
  final pulumi.Input<String> dev;

  /// Creates a new [DomainOsBootDevice].
  /// [dev] Specifies the device type for booting the domain.
  const DomainOsBootDevice({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory DomainOsBootDevice.fromMap(Map<String, dynamic> map) {
    return DomainOsBootDevice(
      dev: pulumi.Input.fromValue(map['dev'] as String),
    );
  }
}
