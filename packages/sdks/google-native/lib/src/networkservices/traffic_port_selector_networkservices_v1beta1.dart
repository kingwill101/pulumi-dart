// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification of a port-based selector.
class TrafficPortSelectorNetworkservicesV1beta1 {
  /// Optional. A list of ports. Can be port numbers or port range (example, [80-90] specifies all ports from 80 to 90, including 80 and 90) or named ports or * to specify all ports. If the list is empty, all ports are selected.
  final pulumi.Input<List<String>>? ports;

  /// Creates a new [TrafficPortSelectorNetworkservicesV1beta1].
  /// [ports] Optional. A list of ports. Can be port numbers or port range (example, [80-90] specifies all ports from 80 to 90, including 80 and 90) or named ports or * to specify all ports. If the list is empty, all ports are selected.
  TrafficPortSelectorNetworkservicesV1beta1({
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ports': ?ports,
    };
  }

  factory TrafficPortSelectorNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return TrafficPortSelectorNetworkservicesV1beta1(
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

