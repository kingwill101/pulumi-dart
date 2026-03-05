// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_port_ids_get_port_ids_args_doc}
/// Arguments for getPortIds.
/// {@endtemplate}
/// {@macro pulumi_networking_get_port_ids_get_port_ids_args_doc}
class GetPortIdsArgs {
  /// The administrative state of the port.
  final pulumi.Input<bool>? adminStateUp;
  /// Human-readable description of the port.
  final pulumi.Input<String>? description;
  /// The ID of the device the port belongs to.
  final pulumi.Input<String>? deviceId;
  /// The device owner of the port.
  final pulumi.Input<String>? deviceOwner;
  final pulumi.Input<String>? dnsName;
  /// The port IP address filter.
  final pulumi.Input<String>? fixedIp;
  /// The MAC address of the port.
  final pulumi.Input<String>? macAddress;
  /// The name of the port.
  final pulumi.Input<String>? name;
  /// The ID of the network the port belongs to.
  final pulumi.Input<String>? networkId;
  /// The owner of the port.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve port ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The list of port security group IDs to filter.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Order the results in either `asc` or `desc`.
  /// Defaults to none.
  final pulumi.Input<String>? sortDirection;
  /// Sort ports based on a certain key. Defaults to none.
  final pulumi.Input<String>? sortKey;
  /// The status of the port.
  final pulumi.Input<String>? status;
  /// The list of port tags to filter.
  final pulumi.Input<List<String>>? tags;
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetPortIdsArgs].
  /// [adminStateUp] The administrative state of the port.
  /// [description] Human-readable description of the port.
  /// [deviceId] The ID of the device the port belongs to.
  /// [deviceOwner] The device owner of the port.
  /// [dnsName] Optional.
  /// [fixedIp] The port IP address filter.
  /// [macAddress] The MAC address of the port.
  /// [name] The name of the port.
  /// [networkId] The ID of the network the port belongs to.
  /// [projectId] The owner of the port.
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [securityGroupIds] The list of port security group IDs to filter.
  /// [sortDirection] Order the results in either `asc` or `desc`.
  /// [sortKey] Sort ports based on a certain key. Defaults to none.
  /// [status] The status of the port.
  /// [tags] The list of port tags to filter.
  /// [tenantId] Optional.
  GetPortIdsArgs({
    this.adminStateUp,
    this.description,
    this.deviceId,
    this.deviceOwner,
    this.dnsName,
    this.fixedIp,
    this.macAddress,
    this.name,
    this.networkId,
    this.projectId,
    this.region,
    this.securityGroupIds,
    this.sortDirection,
    this.sortKey,
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
      'projectId': ?projectId,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'sortDirection': ?sortDirection,
      'sortKey': ?sortKey,
      'status': ?status,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetPortIdsArgs.fromMap(Map<String, dynamic> map) {
    return GetPortIdsArgs(
      adminStateUp: (() { final guardedValue = map['adminStateUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceId: (() { final guardedValue = map['deviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceOwner: (() { final guardedValue = map['deviceOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fixedIp: (() { final guardedValue = map['fixedIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sortDirection: (() { final guardedValue = map['sortDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sortKey: (() { final guardedValue = map['sortKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

