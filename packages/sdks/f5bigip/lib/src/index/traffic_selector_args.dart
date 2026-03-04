// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_traffic_selector_traffic_selector_args_doc}
/// The set of arguments for TrafficSelector.
/// {@endtemplate}
/// {@macro pulumi_index_traffic_selector_traffic_selector_args_doc}
class TrafficSelectorArgs {
  /// Description of the traffic selector.
  final pulumi.Input<String>? description;

  /// Specifies the host or network IP address to which the application traffic is destined.When creating a new traffic selector, this parameter is required.
  final pulumi.Input<String> destinationAddress;

  /// Specifies the IP port used by the application. The default value is `All Ports (0)`
  final pulumi.Input<int>? destinationPort;

  /// Specifies whether the traffic selector applies to inbound or outbound traffic, or both. The default value is `Both`.
  final pulumi.Input<String>? direction;

  /// Specifies the network protocol to use for this traffic. The default value is `All Protocols (255)`
  final pulumi.Input<int>? ipProtocol;

  /// Specifies the IPsec policy that tells the BIG-IP system how to handle the packets.When creating a new traffic selector, if this parameter is not specified, the default is `default-ipsec-policy`.
  final pulumi.Input<String>? ipsecPolicy;

  /// Name of the IPSec traffic-selector,it should be "full path".The full path is the combination of the partition + name of the IPSec traffic-selector.(For example `/Common/test-selector`)
  final pulumi.Input<String> name;

  /// Specifies the order in which traffic is matched, if traffic can be matched to multiple traffic selectors.Traffic is matched to the traffic selector with the highest priority (lowest order number).
  /// When creating a new traffic selector, if this parameter is not specified, the default is `last`
  final pulumi.Input<int>? order;

  /// Specifies the host or network IP address from which the application traffic originates.When creating a new traffic selector, this parameter is required.
  final pulumi.Input<String> sourceAddress;

  /// Specifies the IP port used by the application. The default value is `All Ports (0)`.
  final pulumi.Input<int>? sourcePort;

  /// Creates a new [TrafficSelectorArgs].
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
  TrafficSelectorArgs({
    this.description,
    required this.destinationAddress,
    this.destinationPort,
    this.direction,
    this.ipProtocol,
    this.ipsecPolicy,
    required this.name,
    this.order,
    required this.sourceAddress,
    this.sourcePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddress': destinationAddress,
      'destinationPort': ?destinationPort,
      'direction': ?direction,
      'ipProtocol': ?ipProtocol,
      'ipsecPolicy': ?ipsecPolicy,
      'name': name,
      'order': ?order,
      'sourceAddress': sourceAddress,
      'sourcePort': ?sourcePort,
    };
  }

  factory TrafficSelectorArgs.fromMap(Map<String, dynamic> map) {
    return TrafficSelectorArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationAddress: pulumi.Input.fromValue(
        map['destinationAddress'] as String,
      ),
      destinationPort: (() {
        final guardedValue = map['destinationPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      direction: (() {
        final guardedValue = map['direction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipProtocol: (() {
        final guardedValue = map['ipProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ipsecPolicy: (() {
        final guardedValue = map['ipsecPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      order: (() {
        final guardedValue = map['order'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sourceAddress: pulumi.Input.fromValue(map['sourceAddress'] as String),
      sourcePort: (() {
        final guardedValue = map['sourcePort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
