// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceVdpa {
  /// Defines the specific vDPA device used for the network interface, facilitating optimized data paths.
  final pulumi.Input<String>? device;

  /// Creates a new [DomainDevicesInterfaceSourceVdpa].
  /// [device] Defines the specific vDPA device used for the network interface, facilitating optimized data paths.
  DomainDevicesInterfaceSourceVdpa({
    this.device,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': ?device,
    };
  }

  factory DomainDevicesInterfaceSourceVdpa.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVdpa(
      device: map['device'] == null ? null : (map['device']! as String).input(),
    );
  }
}

