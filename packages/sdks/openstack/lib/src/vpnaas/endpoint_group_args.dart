// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpnaas_endpoint_group_endpoint_group_args_doc}
/// The set of arguments for EndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_vpnaas_endpoint_group_endpoint_group_args_doc}
class EndpointGroupArgs {
  /// The human-readable description for the group.
  /// Changing this updates the description of the existing group.
  final pulumi.Input<String>? description;
  /// List of endpoints of the same type, for the endpoint group. The values will depend on the type.
  /// Changing this creates a new group.
  final pulumi.Input<List<String>>? endpoints;
  /// The name of the group. Changing this updates the name of
  /// the existing group.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an endpoint group. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// group.
  final pulumi.Input<String>? region;
  /// The owner of the group. Required if admin wants to
  /// create an endpoint group for another project. Changing this creates a new group.
  final pulumi.Input<String>? tenantId;
  /// The type of the endpoints in the group. A valid value is subnet, cidr, network, router, or vlan.
  /// Changing this creates a new group.
  final pulumi.Input<String>? type;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [EndpointGroupArgs].
  /// [description] The human-readable description for the group.
  /// [endpoints] List of endpoints of the same type, for the endpoint group. The values will depend on the type.
  /// [name] The name of the group. Changing this updates the name of
  /// [region] The region in which to obtain the V2 Networking client.
  /// [tenantId] The owner of the group. Required if admin wants to
  /// [type] The type of the endpoints in the group. A valid value is subnet, cidr, network, router, or vlan.
  /// [valueSpecs] Map of additional options.
  EndpointGroupArgs({
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? endpoints,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tenantId,
    pulumi.Output<String>? type,
    pulumi.Output<Map<String, String>>? valueSpecs,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      endpoints = pulumi.Input.asOptionalInput<List<String>>(endpoints),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      type = pulumi.Input.asOptionalInput<String>(type),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endpoints': ?endpoints,
      'name': ?name,
      'region': ?region,
      'tenantId': ?tenantId,
      'type': ?type,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory EndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return EndpointGroupArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<String>>((map['endpoints'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      valueSpecs: map['valueSpecs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['valueSpecs'] as Map).cast<String, String>()),
    );
  }
}

