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
  PortForwardingV2Args({
    pulumi.Output<String>? description,
    required pulumi.Output<int> externalPort,
    required pulumi.Output<String> floatingipId,
    required pulumi.Output<String> internalIpAddress,
    required pulumi.Output<int> internalPort,
    required pulumi.Output<String> internalPortId,
    required pulumi.Output<String> protocol,
    pulumi.Output<String>? region,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      externalPort = pulumi.Input.asInput<int>(externalPort),
      floatingipId = pulumi.Input.asInput<String>(floatingipId),
      internalIpAddress = pulumi.Input.asInput<String>(internalIpAddress),
      internalPort = pulumi.Input.asInput<int>(internalPort),
      internalPortId = pulumi.Input.asInput<String>(internalPortId),
      protocol = pulumi.Input.asInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      externalPort: pulumi.Output.create<int>(map['externalPort'] as int),
      floatingipId: pulumi.Output.create<String>(map['floatingipId'] as String),
      internalIpAddress: pulumi.Output.create<String>(map['internalIpAddress'] as String),
      internalPort: pulumi.Output.create<int>(map['internalPort'] as int),
      internalPortId: pulumi.Output.create<String>(map['internalPortId'] as String),
      protocol: pulumi.Output.create<String>(map['protocol'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

