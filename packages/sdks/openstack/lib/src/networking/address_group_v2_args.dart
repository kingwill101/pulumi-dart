// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_address_group_v2_address_group_v2_args_doc}
/// The set of arguments for AddressGroupV2.
/// {@endtemplate}
/// {@macro pulumi_networking_address_group_v2_address_group_v2_args_doc}
class AddressGroupV2Args {
  /// A list of CIDR blocks that define the addresses in
  /// the address group. Each address must be a valid IPv4 or IPv6 CIDR block.
  final pulumi.Input<List<String>> addresses;
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

  /// Creates a new [AddressGroupV2Args].
  /// [addresses] A list of CIDR blocks that define the addresses in
  /// [description] A description of the address group.
  /// [name] A name of the address group.
  /// [projectId] The owner of the address group. Required if admin
  /// [region] The region in which to obtain the V2 networking client.
  const AddressGroupV2Args({
    required this.addresses,
    this.description,
    this.name,
    this.projectId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': addresses,
      'description': ?description,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
    };
  }

  factory AddressGroupV2Args.fromMap(Map<String, dynamic> map) {
    return AddressGroupV2Args(
      addresses: pulumi.Input.fromValue((map['addresses'] as List).cast<String>()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

