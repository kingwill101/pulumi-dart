// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification of a port-based selector.
class TrafficPortSelector {
  /// Optional. A list of ports. Can be port numbers or port range (example, [80-90] specifies all ports from 80 to 90, including 80 and 90) or named ports or * to specify all ports. If the list is empty, all ports are selected.
  final pulumi.Input<List<String>>? ports;

  /// Creates a new [TrafficPortSelector].
  /// [ports] Optional. A list of ports. Can be port numbers or port range (example, [80-90] specifies all ports from 80 to 90, including 80 and 90) or named ports or * to specify all ports. If the list is empty, all ports are selected.
  TrafficPortSelector({
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ports': ?ports,
    };
  }

  factory TrafficPortSelector.fromMap(Map<String, dynamic> map) {
    return TrafficPortSelector(
      ports: map['ports'] == null ? null : ((map['ports'] as List).cast<String>()).input(),
    );
  }
}

