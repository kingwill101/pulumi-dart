// ignore_for_file: unused_element, unnecessary_cast


/// Specification of a port-based selector.
class TrafficPortSelectorResponseNetworkservicesV1beta1 {
  /// Optional. A list of ports. Can be port numbers or port range (example, [80-90] specifies all ports from 80 to 90, including 80 and 90) or named ports or * to specify all ports. If the list is empty, all ports are selected.
  final List<String> ports;

  /// Creates a new [TrafficPortSelectorResponseNetworkservicesV1beta1].
  /// [ports] Optional. A list of ports. Can be port numbers or port range (example, [80-90] specifies all ports from 80 to 90, including 80 and 90) or named ports or * to specify all ports. If the list is empty, all ports are selected.
  TrafficPortSelectorResponseNetworkservicesV1beta1({
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ports': ports,
    };
  }

  factory TrafficPortSelectorResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return TrafficPortSelectorResponseNetworkservicesV1beta1(
      ports: (map['ports'] as List).cast<String>(),
    );
  }
}

