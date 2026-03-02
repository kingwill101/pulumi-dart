// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_subnet.dart';

/// Input properties used for looking up and filtering VirtualNetwork resources.
class VirtualNetworkState {
  /// A description for the Virtual Network.
  final pulumi.Input<String>? description;
  /// Specifies the name of the Dev Test Lab in which the Virtual Network should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? labName;
  /// Specifies the name of the Dev Test Virtual Network. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `subnet` block as defined below.
  final pulumi.Input<VirtualNetworkSubnet>? subnet;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The unique immutable identifier of the Dev Test Virtual Network.
  final pulumi.Input<String>? uniqueIdentifier;

  /// Creates a new [VirtualNetworkState].
  /// [description] A description for the Virtual Network.
  /// [labName] Specifies the name of the Dev Test Lab in which the Virtual Network should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Dev Test Virtual Network. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  /// [subnet] A `subnet` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [uniqueIdentifier] The unique immutable identifier of the Dev Test Virtual Network.
  VirtualNetworkState({
    this.description,
    this.labName,
    this.name,
    this.resourceGroupName,
    this.subnet,
    this.tags,
    this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labName': ?labName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'subnet': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkSubnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'tags': ?tags,
      'uniqueIdentifier': ?uniqueIdentifier,
    };
  }

  factory VirtualNetworkState.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      labName: map['labName'] == null ? null : (map['labName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      subnet: map['subnet'] == null ? null : (VirtualNetworkSubnet.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      uniqueIdentifier: map['uniqueIdentifier'] == null ? null : (map['uniqueIdentifier']! as String).input(),
    );
  }
}

