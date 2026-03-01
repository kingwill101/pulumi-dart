// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AddressGroupV2 resources.
class AddressGroupV2State {
  /// A list of CIDR blocks that define the addresses in
  /// the address group. Each address must be a valid IPv4 or IPv6 CIDR block.
  final pulumi.Input<List<String>>? addresses;
  /// A description of the address group.
  final pulumi.Input<String>? description;
  /// A name of the address group.
  final pulumi.Input<String>? name;
  /// The owner of the address group. Required if admin
  /// wants to create a group for a specific project. Changing this creates a new
  /// address group.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 networking client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new address group.
  final pulumi.Input<String>? region;

  /// Creates a new [AddressGroupV2State].
  /// [addresses] A list of CIDR blocks that define the addresses in
  /// [description] A description of the address group.
  /// [name] A name of the address group.
  /// [projectId] The owner of the address group. Required if admin
  /// [region] The region in which to obtain the V2 networking client.
  AddressGroupV2State({
    pulumi.Output<List<String>>? addresses,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
  }) :
      addresses = pulumi.Input.asOptionalInput<List<String>>(addresses),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'description': ?description,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
    };
  }

  factory AddressGroupV2State.fromMap(Map<String, dynamic> map) {
    return AddressGroupV2State(
      addresses: map['addresses'] == null ? null : pulumi.Output.create<List<String>>((map['addresses'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

