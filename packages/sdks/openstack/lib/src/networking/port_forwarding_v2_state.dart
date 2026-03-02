// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PortForwardingV2 resources.
class PortForwardingV2State {
  /// A text describing the port forwarding. Changing this
  /// updates the `description` of an existing port forwarding.
  final pulumi.Input<String>? description;
  /// The TCP/UDP/other protocol port number of the port forwarding. Changing this
  /// updates the `external_port` of an existing port forwarding.
  final pulumi.Input<int>? externalPort;
  /// The ID of the Neutron floating IP address. Changing this creates a new port forwarding.
  final pulumi.Input<String>? floatingipId;
  /// The fixed IPv4 address of the Neutron port associated with the port forwarding.
  /// Changing this updates the `internal_ip_address` of an existing port forwarding.
  final pulumi.Input<String>? internalIpAddress;
  /// The TCP/UDP/other protocol port number of the Neutron port fixed IP address associated to the
  /// port forwarding. Changing this updates the `internal_port` of an existing port forwarding.
  final pulumi.Input<int>? internalPort;
  /// The ID of the Neutron port associated with the port forwarding. Changing
  /// this updates the `internal_port_id` of an existing port forwarding.
  final pulumi.Input<String>? internalPortId;
  /// The IP protocol used in the port forwarding. Changing this updates the `protocol`
  /// of an existing port forwarding.
  final pulumi.Input<String>? protocol;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to create a port forwarding. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// port forwarding.
  final pulumi.Input<String>? region;

  /// Creates a new [PortForwardingV2State].
  /// [description] A text describing the port forwarding. Changing this
  /// [externalPort] The TCP/UDP/other protocol port number of the port forwarding. Changing this
  /// [floatingipId] The ID of the Neutron floating IP address. Changing this creates a new port forwarding.
  /// [internalIpAddress] The fixed IPv4 address of the Neutron port associated with the port forwarding.
  /// [internalPort] The TCP/UDP/other protocol port number of the Neutron port fixed IP address associated to the
  /// [internalPortId] The ID of the Neutron port associated with the port forwarding. Changing
  /// [protocol] The IP protocol used in the port forwarding. Changing this updates the `protocol`
  /// [region] The region in which to obtain the V2 networking client.
  PortForwardingV2State({
    this.description,
    this.externalPort,
    this.floatingipId,
    this.internalIpAddress,
    this.internalPort,
    this.internalPortId,
    this.protocol,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'externalPort': ?externalPort,
      'floatingipId': ?floatingipId,
      'internalIpAddress': ?internalIpAddress,
      'internalPort': ?internalPort,
      'internalPortId': ?internalPortId,
      'protocol': ?protocol,
      'region': ?region,
    };
  }

  factory PortForwardingV2State.fromMap(Map<String, dynamic> map) {
    return PortForwardingV2State(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      externalPort: map['externalPort'] == null ? null : (map['externalPort'] as int).input(),
      floatingipId: map['floatingipId'] == null ? null : (map['floatingipId'] as String).input(),
      internalIpAddress: map['internalIpAddress'] == null ? null : (map['internalIpAddress'] as String).input(),
      internalPort: map['internalPort'] == null ? null : (map['internalPort'] as int).input(),
      internalPortId: map['internalPortId'] == null ? null : (map['internalPortId'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

