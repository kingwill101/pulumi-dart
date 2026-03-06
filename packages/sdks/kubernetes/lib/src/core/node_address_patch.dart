// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodeAddress contains information for the node's address.
class NodeAddressPatch {
  /// The node address.
  final pulumi.Input<String>? address;
  /// Node address type, one of Hostname, ExternalIP or InternalIP.
  final pulumi.Input<String>? type;

  /// Creates a new [NodeAddressPatch].
  /// [address] The node address.
  /// [type] Node address type, one of Hostname, ExternalIP or InternalIP.
  const NodeAddressPatch({
    this.address,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'type': ?type,
    };
  }

  factory NodeAddressPatch.fromMap(Map<String, dynamic> map) {
    return NodeAddressPatch(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

