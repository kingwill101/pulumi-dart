// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrafficSelector resources.
class TrafficSelectorState {
  /// Description of the traffic selector.
  final pulumi.Input<String>? description;
  /// Specifies the host or network IP address to which the application traffic is destined.When creating a new traffic selector, this parameter is required.
  final pulumi.Input<String>? destinationAddress;
  /// Specifies the IP port used by the application. The default value is `All Ports (0)`
  final pulumi.Input<int>? destinationPort;
  /// Specifies whether the traffic selector applies to inbound or outbound traffic, or both. The default value is `Both`.
  final pulumi.Input<String>? direction;
  /// Specifies the network protocol to use for this traffic. The default value is `All Protocols (255)`
  final pulumi.Input<int>? ipProtocol;
  /// Specifies the IPsec policy that tells the BIG-IP system how to handle the packets.When creating a new traffic selector, if this parameter is not specified, the default is `default-ipsec-policy`.
  final pulumi.Input<String>? ipsecPolicy;
  /// Name of the IPSec traffic-selector,it should be "full path".The full path is the combination of the partition + name of the IPSec traffic-selector.(For example `/Common/test-selector`)
  final pulumi.Input<String>? name;
  /// Specifies the order in which traffic is matched, if traffic can be matched to multiple traffic selectors.Traffic is matched to the traffic selector with the highest priority (lowest order number).
  /// When creating a new traffic selector, if this parameter is not specified, the default is `last`
  final pulumi.Input<int>? order;
  /// Specifies the host or network IP address from which the application traffic originates.When creating a new traffic selector, this parameter is required.
  final pulumi.Input<String>? sourceAddress;
  /// Specifies the IP port used by the application. The default value is `All Ports (0)`.
  final pulumi.Input<int>? sourcePort;

  /// Creates a new [TrafficSelectorState].
  /// [description] Description of the traffic selector.
  /// [destinationAddress] Specifies the host or network IP address to which the application traffic is destined.When creating a new traffic selector, this parameter is required.
  /// [destinationPort] Specifies the IP port used by the application. The default value is `All Ports (0)`
  /// [direction] Specifies whether the traffic selector applies to inbound or outbound traffic, or both. The default value is `Both`.
  /// [ipProtocol] Specifies the network protocol to use for this traffic. The default value is `All Protocols (255)`
  /// [ipsecPolicy] Specifies the IPsec policy that tells the BIG-IP system how to handle the packets.When creating a new traffic selector, if this parameter is not specified, the default is `default-ipsec-policy`.
  /// [name] Name of the IPSec traffic-selector,it should be "full path".The full path is the combination of the partition + name of the IPSec traffic-selector.(For example `/Common/test-selector`)
  /// [order] Specifies the order in which traffic is matched, if traffic can be matched to multiple traffic selectors.Traffic is matched to the traffic selector with the highest priority (lowest order number).
  /// [sourceAddress] Specifies the host or network IP address from which the application traffic originates.When creating a new traffic selector, this parameter is required.
  /// [sourcePort] Specifies the IP port used by the application. The default value is `All Ports (0)`.
  TrafficSelectorState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? destinationAddress,
    pulumi.Output<int>? destinationPort,
    pulumi.Output<String>? direction,
    pulumi.Output<int>? ipProtocol,
    pulumi.Output<String>? ipsecPolicy,
    pulumi.Output<String>? name,
    pulumi.Output<int>? order,
    pulumi.Output<String>? sourceAddress,
    pulumi.Output<int>? sourcePort,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationAddress = pulumi.Input.asOptionalInput<String>(destinationAddress),
      destinationPort = pulumi.Input.asOptionalInput<int>(destinationPort),
      direction = pulumi.Input.asOptionalInput<String>(direction),
      ipProtocol = pulumi.Input.asOptionalInput<int>(ipProtocol),
      ipsecPolicy = pulumi.Input.asOptionalInput<String>(ipsecPolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      order = pulumi.Input.asOptionalInput<int>(order),
      sourceAddress = pulumi.Input.asOptionalInput<String>(sourceAddress),
      sourcePort = pulumi.Input.asOptionalInput<int>(sourcePort);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddress': ?destinationAddress,
      'destinationPort': ?destinationPort,
      'direction': ?direction,
      'ipProtocol': ?ipProtocol,
      'ipsecPolicy': ?ipsecPolicy,
      'name': ?name,
      'order': ?order,
      'sourceAddress': ?sourceAddress,
      'sourcePort': ?sourcePort,
    };
  }

  factory TrafficSelectorState.fromMap(Map<String, dynamic> map) {
    return TrafficSelectorState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationAddress: map['destinationAddress'] == null ? null : pulumi.Output.create<String>(map['destinationAddress'] as String),
      destinationPort: map['destinationPort'] == null ? null : pulumi.Output.create<int>(map['destinationPort'] as int),
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      ipProtocol: map['ipProtocol'] == null ? null : pulumi.Output.create<int>(map['ipProtocol'] as int),
      ipsecPolicy: map['ipsecPolicy'] == null ? null : pulumi.Output.create<String>(map['ipsecPolicy'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      order: map['order'] == null ? null : pulumi.Output.create<int>(map['order'] as int),
      sourceAddress: map['sourceAddress'] == null ? null : pulumi.Output.create<String>(map['sourceAddress'] as String),
      sourcePort: map['sourcePort'] == null ? null : pulumi.Output.create<int>(map['sourcePort'] as int),
    );
  }
}

