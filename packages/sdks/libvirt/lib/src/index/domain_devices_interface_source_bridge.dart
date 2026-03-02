// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceBridge {
  /// Defines the name of the bridge device used by the network interface.
  final pulumi.Input<String> bridge;

  /// Creates a new [DomainDevicesInterfaceSourceBridge].
  /// [bridge] Defines the name of the bridge device used by the network interface.
  DomainDevicesInterfaceSourceBridge({
    required this.bridge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bridge': bridge,
    };
  }

  factory DomainDevicesInterfaceSourceBridge.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceBridge(
      bridge: (map['bridge'] as String).input(),
    );
  }
}

