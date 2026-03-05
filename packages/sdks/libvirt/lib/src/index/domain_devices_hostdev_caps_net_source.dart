// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevCapsNetSource {
  /// Specifies the network interface to which the host device is associated.
  final pulumi.Input<String> interface;

  /// Creates a new [DomainDevicesHostdevCapsNetSource].
  /// [interface] Specifies the network interface to which the host device is associated.
  DomainDevicesHostdevCapsNetSource({
    required this.interface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interface': interface,
    };
  }

  factory DomainDevicesHostdevCapsNetSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevCapsNetSource(
      interface: pulumi.Input.fromValue(map['interface'] as String),
    );
  }
}

