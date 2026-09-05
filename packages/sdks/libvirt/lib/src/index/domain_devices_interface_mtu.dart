// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceMtu {
  /// Sets the specific MTU size for network communication.
  final pulumi.Input<double> size;

  /// Creates a new [DomainDevicesInterfaceMtu].
  /// [size] Sets the specific MTU size for network communication.
  const DomainDevicesInterfaceMtu({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory DomainDevicesInterfaceMtu.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceMtu(
      size: pulumi.Input.fromValue((map['size'] as num).toDouble()),
    );
  }
}
