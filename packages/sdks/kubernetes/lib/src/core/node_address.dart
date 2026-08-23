// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodeAddress contains information for the node's address.
class NodeAddress {
  /// The node address.
  final pulumi.Input<String> address;
  /// Node address type, one of Hostname, ExternalIP or InternalIP.
  final pulumi.Input<String> type;

  /// Creates a new [NodeAddress].
  /// [address] The node address.
  /// [type] Node address type, one of Hostname, ExternalIP or InternalIP.
  const NodeAddress({
    required this.address,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'type': type,
    };
  }

  factory NodeAddress.fromMap(Map<String, dynamic> map) {
    return NodeAddress(
      address: pulumi.Input.fromValue(map['address'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
