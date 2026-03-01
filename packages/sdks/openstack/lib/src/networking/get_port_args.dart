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
    pulumi.Output<bool>? adminStateUp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? deviceId,
    pulumi.Output<String>? deviceOwner,
    pulumi.Output<String>? dnsName,
    pulumi.Output<String>? fixedIp,
    pulumi.Output<String>? macAddress,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkId,
    pulumi.Output<String>? portId,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? tenantId,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      description = pulumi.Input.asOptionalInput<String>(description),
      deviceId = pulumi.Input.asOptionalInput<String>(deviceId),
      deviceOwner = pulumi.Input.asOptionalInput<String>(deviceOwner),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      fixedIp = pulumi.Input.asOptionalInput<String>(fixedIp),
      macAddress = pulumi.Input.asOptionalInput<String>(macAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkId = pulumi.Input.asOptionalInput<String>(networkId),
      portId = pulumi.Input.asOptionalInput<String>(portId),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      deviceId: map['deviceId'] == null ? null : pulumi.Output.create<String>(map['deviceId'] as String),
      deviceOwner: map['deviceOwner'] == null ? null : pulumi.Output.create<String>(map['deviceOwner'] as String),
      dnsName: map['dnsName'] == null ? null : pulumi.Output.create<String>(map['dnsName'] as String),
      fixedIp: map['fixedIp'] == null ? null : pulumi.Output.create<String>(map['fixedIp'] as String),
      macAddress: map['macAddress'] == null ? null : pulumi.Output.create<String>(map['macAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkId: map['networkId'] == null ? null : pulumi.Output.create<String>(map['networkId'] as String),
      portId: map['portId'] == null ? null : pulumi.Output.create<String>(map['portId'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

