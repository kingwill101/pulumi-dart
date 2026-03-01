// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_router_get_router_args_doc}
/// Arguments for getRouter.
/// {@endtemplate}
/// {@macro pulumi_networking_get_router_get_router_args_doc}
class GetRouterArgs {
  /// Administrative up/down status for the router (must be "true" or "false" if provided).
  final pulumi.Input<bool>? adminStateUp;
  /// Human-readable description of the router.
  final pulumi.Input<String>? description;
  /// Indicates whether or not to get a distributed router.
  final pulumi.Input<bool>? distributed;
  /// The value that points out if the Source NAT is enabled on the router.
  final pulumi.Input<bool>? enableSnat;
  /// The name of the router.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve router ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The UUID of the router resource.
  final pulumi.Input<String>? routerId;
  /// The status of the router (ACTIVE/DOWN).
  final pulumi.Input<String>? status;
  /// The list of router tags to filter.
  final pulumi.Input<List<String>>? tags;
  /// The owner of the router.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetRouterArgs].
  /// [adminStateUp] Administrative up/down status for the router (must be "true" or "false" if provided).
  /// [description] Human-readable description of the router.
  /// [distributed] Indicates whether or not to get a distributed router.
  /// [enableSnat] The value that points out if the Source NAT is enabled on the router.
  /// [name] The name of the router.
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [routerId] The UUID of the router resource.
  /// [status] The status of the router (ACTIVE/DOWN).
  /// [tags] The list of router tags to filter.
  /// [tenantId] The owner of the router.
  GetRouterArgs({
    pulumi.Output<bool>? adminStateUp,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? distributed,
    pulumi.Output<bool>? enableSnat,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? routerId,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? tenantId,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      description = pulumi.Input.asOptionalInput<String>(description),
      distributed = pulumi.Input.asOptionalInput<bool>(distributed),
      enableSnat = pulumi.Input.asOptionalInput<bool>(enableSnat),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      routerId = pulumi.Input.asOptionalInput<String>(routerId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'description': ?description,
      'distributed': ?distributed,
      'enableSnat': ?enableSnat,
      'name': ?name,
      'region': ?region,
      'routerId': ?routerId,
      'status': ?status,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetRouterArgs.fromMap(Map<String, dynamic> map) {
    return GetRouterArgs(
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      distributed: map['distributed'] == null ? null : pulumi.Output.create<bool>(map['distributed'] as bool),
      enableSnat: map['enableSnat'] == null ? null : pulumi.Output.create<bool>(map['enableSnat'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routerId: map['routerId'] == null ? null : pulumi.Output.create<String>(map['routerId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

