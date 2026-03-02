// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_floating_ip_get_floating_ip_args_doc}
/// Arguments for getFloatingIp.
/// {@endtemplate}
/// {@macro pulumi_networking_get_floating_ip_get_floating_ip_args_doc}
class GetFloatingIpArgs {
  /// The IP address of the floating IP.
  final pulumi.Input<String>? address;
  /// Human-readable description of the floating IP.
  final pulumi.Input<String>? description;
  /// The specific IP address of the internal port which should be associated with the floating IP.
  final pulumi.Input<String>? fixedIp;
  /// The ID of the network from which the floating IP belongs to.
  final pulumi.Input<String>? pool;
  /// The ID of the port the floating IP is attached.
  final pulumi.Input<String>? portId;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve floating IP ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// status of the floating IP (ACTIVE/DOWN).
  final pulumi.Input<String>? status;
  /// The list of floating IP tags to filter.
  final pulumi.Input<List<String>>? tags;
  /// The owner of the floating IP.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetFloatingIpArgs].
  /// [address] The IP address of the floating IP.
  /// [description] Human-readable description of the floating IP.
  /// [fixedIp] The specific IP address of the internal port which should be associated with the floating IP.
  /// [pool] The ID of the network from which the floating IP belongs to.
  /// [portId] The ID of the port the floating IP is attached.
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [status] status of the floating IP (ACTIVE/DOWN).
  /// [tags] The list of floating IP tags to filter.
  /// [tenantId] The owner of the floating IP.
  GetFloatingIpArgs({
    this.address,
    this.description,
    this.fixedIp,
    this.pool,
    this.portId,
    this.region,
    this.status,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'description': ?description,
      'fixedIp': ?fixedIp,
      'pool': ?pool,
      'portId': ?portId,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetFloatingIpArgs.fromMap(Map<String, dynamic> map) {
    return GetFloatingIpArgs(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fixedIp: map['fixedIp'] == null ? null : (map['fixedIp'] as String).input(),
      pool: map['pool'] == null ? null : (map['pool'] as String).input(),
      portId: map['portId'] == null ? null : (map['portId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

