// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_floating_ip_floating_ip_args_doc}
/// The set of arguments for FloatingIp.
/// {@endtemplate}
/// {@macro pulumi_networking_floating_ip_floating_ip_args_doc}
class FloatingIpArgs {
  /// The actual/specific floating IP to obtain. By default,
  /// non-admin users are not able to specify a floating IP, so you must either be
  /// an admin user or have had a custom policy or role applied to your OpenStack
  /// user or project.
  final pulumi.Input<String>? address;
  /// Human-readable description for the floating IP.
  final pulumi.Input<String>? description;
  /// The floating IP DNS domain. Available, when Neutron
  /// DNS extension is enabled. The data in this attribute will be published in an
  /// external DNS service when Neutron is configured to integrate with such a
  /// service. Changing this creates a new floating IP.
  final pulumi.Input<String>? dnsDomain;
  /// The floating IP DNS name. Available, when Neutron DNS
  /// extension is enabled. The data in this attribute will be published in an
  /// external DNS service when Neutron is configured to integrate with such a
  /// service. Changing this creates a new floating IP.
  final pulumi.Input<String>? dnsName;
  /// Fixed IP of the port to associate with this floating IP. Required if
  /// the port has multiple fixed IPs.
  final pulumi.Input<String>? fixedIp;
  /// The name of the pool from which to obtain the floating
  /// IP. Changing this creates a new floating IP.
  final pulumi.Input<String>? pool;
  /// ID of an existing port with at least one IP address to
  /// associate with this floating IP.
  final pulumi.Input<String>? portId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a floating IP that can be used with
  /// another networking resource, such as a load balancer. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// floating IP (which may or may not have a different address).
  final pulumi.Input<String>? region;
  /// The subnet ID of the floating IP pool. Specify this if
  /// the floating IP network has multiple subnets.
  final pulumi.Input<String>? subnetId;
  /// A list of external subnet IDs to try over each to
  /// allocate a floating IP address. If a subnet ID in a list has exhausted
  /// floating IP pool, the next subnet ID will be tried. This argument is used only
  /// during the resource creation. Conflicts with a `subnet_id` argument.
  final pulumi.Input<List<String>>? subnetIds;
  /// A set of string tags for the floating IP.
  final pulumi.Input<List<String>>? tags;
  /// The target tenant ID in which to allocate the floating
  /// IP, if you specify this together with a port_id, make sure the target port
  /// belongs to the same tenant. Changing this creates a new floating IP (which
  /// may or may not have a different address)
  final pulumi.Input<String>? tenantId;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [FloatingIpArgs].
  /// [address] The actual/specific floating IP to obtain. By default,
  /// [description] Human-readable description for the floating IP.
  /// [dnsDomain] The floating IP DNS domain. Available, when Neutron
  /// [dnsName] The floating IP DNS name. Available, when Neutron DNS
  /// [fixedIp] Fixed IP of the port to associate with this floating IP. Required if
  /// [pool] The name of the pool from which to obtain the floating
  /// [portId] ID of an existing port with at least one IP address to
  /// [region] The region in which to obtain the V2 Networking client.
  /// [subnetId] The subnet ID of the floating IP pool. Specify this if
  /// [subnetIds] A list of external subnet IDs to try over each to
  /// [tags] A set of string tags for the floating IP.
  /// [tenantId] The target tenant ID in which to allocate the floating
  /// [valueSpecs] Map of additional options.
  const FloatingIpArgs({
    this.address,
    this.description,
    this.dnsDomain,
    this.dnsName,
    this.fixedIp,
    this.pool,
    this.portId,
    this.region,
    this.subnetId,
    this.subnetIds,
    this.tags,
    this.tenantId,
    this.valueSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'description': ?description,
      'dnsDomain': ?dnsDomain,
      'dnsName': ?dnsName,
      'fixedIp': ?fixedIp,
      'pool': ?pool,
      'portId': ?portId,
      'region': ?region,
      'subnetId': ?subnetId,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory FloatingIpArgs.fromMap(Map<String, dynamic> map) {
    return FloatingIpArgs(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsDomain: (() { final guardedValue = map['dnsDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fixedIp: (() { final guardedValue = map['fixedIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pool: (() { final guardedValue = map['pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portId: (() { final guardedValue = map['portId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueSpecs: (() { final guardedValue = map['valueSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

