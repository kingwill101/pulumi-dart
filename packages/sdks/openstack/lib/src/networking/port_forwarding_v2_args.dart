// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_port_forwarding_v2_port_forwarding_v2_args_doc}
/// The set of arguments for PortForwardingV2.
/// {@endtemplate}
/// {@macro pulumi_networking_port_forwarding_v2_port_forwarding_v2_args_doc}
class PortForwardingV2Args {
  /// A text describing the port forwarding. Changing this
  /// updates the `description` of an existing port forwarding.
  final pulumi.Input<String>? description;
  /// The TCP/UDP/other protocol port number of the port forwarding. Changing this
  /// updates the `external_port` of an existing port forwarding.
  final pulumi.Input<int> externalPort;
  /// The ID of the Neutron floating IP address. Changing this creates a new port forwarding.
  final pulumi.Input<String> floatingipId;
  /// The fixed IPv4 address of the Neutron port associated with the port forwarding.
  /// Changing this updates the `internal_ip_address` of an existing port forwarding.
  final pulumi.Input<String> internalIpAddress;
  /// The TCP/UDP/other protocol port number of the Neutron port fixed IP address associated to the
  /// port forwarding. Changing this updates the `internal_port` of an existing port forwarding.
  final pulumi.Input<int> internalPort;
  /// The ID of the Neutron port associated with the port forwarding. Changing
  /// this updates the `internal_port_id` of an existing port forwarding.
  final pulumi.Input<String> internalPortId;
  /// The IP protocol used in the port forwarding. Changing this updates the `protocol`
  /// of an existing port forwarding.
  final pulumi.Input<String> protocol;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to create a port forwarding. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// port forwarding.
  final pulumi.Input<String>? region;

  /// Creates a new [PortForwardingV2Args].
  /// [description] A text describing the port forwarding. Changing this
  /// [externalPort] The TCP/UDP/other protocol port number of the port forwarding. Changing this
  /// [floatingipId] The ID of the Neutron floating IP address. Changing this creates a new port forwarding.
  /// [internalIpAddress] The fixed IPv4 address of the Neutron port associated with the port forwarding.
  /// [internalPort] The TCP/UDP/other protocol port number of the Neutron port fixed IP address associated to the
  /// [internalPortId] The ID of the Neutron port associated with the port forwarding. Changing
  /// [protocol] The IP protocol used in the port forwarding. Changing this updates the `protocol`
  /// [region] The region in which to obtain the V2 networking client.
  const PortForwardingV2Args({
    this.description,
    required this.externalPort,
    required this.floatingipId,
    required this.internalIpAddress,
    required this.internalPort,
    required this.internalPortId,
    required this.protocol,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'externalPort': externalPort,
      'floatingipId': floatingipId,
      'internalIpAddress': internalIpAddress,
      'internalPort': internalPort,
      'internalPortId': internalPortId,
      'protocol': protocol,
      'region': ?region,
    };
  }

  factory PortForwardingV2Args.fromMap(Map<String, dynamic> map) {
    return PortForwardingV2Args(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalPort: pulumi.Input.fromValue(map['externalPort'] as int),
      floatingipId: pulumi.Input.fromValue(map['floatingipId'] as String),
      internalIpAddress: pulumi.Input.fromValue(map['internalIpAddress'] as String),
      internalPort: pulumi.Input.fromValue(map['internalPort'] as int),
      internalPortId: pulumi.Input.fromValue(map['internalPortId'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

