// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EndpointGroup resources.
class EndpointGroupState {
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

  /// Creates a new [EndpointGroupState].
  /// [description] The human-readable description for the group.
  /// [endpoints] List of endpoints of the same type, for the endpoint group. The values will depend on the type.
  /// [name] The name of the group. Changing this updates the name of
  /// [region] The region in which to obtain the V2 Networking client.
  /// [tenantId] The owner of the group. Required if admin wants to
  /// [type] The type of the endpoints in the group. A valid value is subnet, cidr, network, router, or vlan.
  /// [valueSpecs] Map of additional options.
  EndpointGroupState({
    this.description,
    this.endpoints,
    this.name,
    this.region,
    this.tenantId,
    this.type,
    this.valueSpecs,
  });

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

  factory EndpointGroupState.fromMap(Map<String, dynamic> map) {
    return EndpointGroupState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      endpoints: map['endpoints'] == null ? null : ((map['endpoints']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      valueSpecs: map['valueSpecs'] == null ? null : ((map['valueSpecs']! as Map).cast<String, String>()).input(),
    );
  }
}

