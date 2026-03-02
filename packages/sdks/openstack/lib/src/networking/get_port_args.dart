// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_port_get_port_args_doc}
/// Arguments for getPort.
/// {@endtemplate}
/// {@macro pulumi_networking_get_port_get_port_args_doc}
class GetPortArgs {
  /// The administrative state of the port.
  final pulumi.Input<bool>? adminStateUp;
  /// Human-readable description of the port.
  final pulumi.Input<String>? description;
  /// The ID of the device the port belongs to.
  final pulumi.Input<String>? deviceId;
  /// The device owner of the port.
  final pulumi.Input<String>? deviceOwner;
  /// The port DNS name to filter. Available, when Neutron
  /// DNS extension is enabled.
  final pulumi.Input<String>? dnsName;
  /// The port IP address filter.
  final pulumi.Input<String>? fixedIp;
  /// The MAC address of the port.
  final pulumi.Input<String>? macAddress;
  /// The name of the port.
  final pulumi.Input<String>? name;
  /// The ID of the network the port belongs to.
  final pulumi.Input<String>? networkId;
  /// The ID of the port.
  final pulumi.Input<String>? portId;
  /// The owner of the port.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve port ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The list of port security group IDs to filter.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The status of the port.
  final pulumi.Input<String>? status;
  /// The list of port tags to filter.
  final pulumi.Input<List<String>>? tags;
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetPortArgs].
  /// [adminStateUp] The administrative state of the port.
  /// [description] Human-readable description of the port.
  /// [deviceId] The ID of the device the port belongs to.
  /// [deviceOwner] The device owner of the port.
  /// [dnsName] The port DNS name to filter. Available, when Neutron
  /// [fixedIp] The port IP address filter.
  /// [macAddress] The MAC address of the port.
  /// [name] The name of the port.
  /// [networkId] The ID of the network the port belongs to.
  /// [portId] The ID of the port.
  /// [projectId] The owner of the port.
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [securityGroupIds] The list of port security group IDs to filter.
  /// [status] The status of the port.
  /// [tags] The list of port tags to filter.
  /// [tenantId] Optional.
  GetPortArgs({
    this.adminStateUp,
    this.description,
    this.deviceId,
    this.deviceOwner,
    this.dnsName,
    this.fixedIp,
    this.macAddress,
    this.name,
    this.networkId,
    this.portId,
    this.projectId,
    this.region,
    this.securityGroupIds,
    this.status,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'description': ?description,
      'deviceId': ?deviceId,
      'deviceOwner': ?deviceOwner,
      'dnsName': ?dnsName,
      'fixedIp': ?fixedIp,
      'macAddress': ?macAddress,
      'name': ?name,
      'networkId': ?networkId,
      'portId': ?portId,
      'projectId': ?projectId,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'status': ?status,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetPortArgs.fromMap(Map<String, dynamic> map) {
    return GetPortArgs(
      adminStateUp: map['adminStateUp'] == null ? null : (map['adminStateUp'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      deviceId: map['deviceId'] == null ? null : (map['deviceId'] as String).input(),
      deviceOwner: map['deviceOwner'] == null ? null : (map['deviceOwner'] as String).input(),
      dnsName: map['dnsName'] == null ? null : (map['dnsName'] as String).input(),
      fixedIp: map['fixedIp'] == null ? null : (map['fixedIp'] as String).input(),
      macAddress: map['macAddress'] == null ? null : (map['macAddress'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkId: map['networkId'] == null ? null : (map['networkId'] as String).input(),
      portId: map['portId'] == null ? null : (map['portId'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

