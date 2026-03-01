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
    pulumi.Output<String>? address,
    pulumi.Output<String>? description,
    pulumi.Output<String>? fixedIp,
    pulumi.Output<String>? pool,
    pulumi.Output<String>? portId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? tenantId,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      description = pulumi.Input.asOptionalInput<String>(description),
      fixedIp = pulumi.Input.asOptionalInput<String>(fixedIp),
      pool = pulumi.Input.asOptionalInput<String>(pool),
      portId = pulumi.Input.asOptionalInput<String>(portId),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fixedIp: map['fixedIp'] == null ? null : pulumi.Output.create<String>(map['fixedIp'] as String),
      pool: map['pool'] == null ? null : pulumi.Output.create<String>(map['pool'] as String),
      portId: map['portId'] == null ? null : pulumi.Output.create<String>(map['portId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

