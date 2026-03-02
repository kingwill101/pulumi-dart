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
    this.addresses,
    this.description,
    this.name,
    this.projectId,
    this.region,
  });

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
      addresses: map['addresses'] == null ? null : ((map['addresses']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

