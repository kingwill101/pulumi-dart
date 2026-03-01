// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_subnet.dart';

/// {@template pulumi_devtest_virtual_network_virtual_network_args_doc}
/// The set of arguments for VirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_devtest_virtual_network_virtual_network_args_doc}
class VirtualNetworkArgs {
  /// A description for the Virtual Network.
  final pulumi.Input<String>? description;
  /// Specifies the name of the Dev Test Lab in which the Virtual Network should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> labName;
  /// Specifies the name of the Dev Test Virtual Network. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `subnet` block as defined below.
  final pulumi.Input<VirtualNetworkSubnet>? subnet;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualNetworkArgs].
  /// [description] A description for the Virtual Network.
  /// [labName] Specifies the name of the Dev Test Lab in which the Virtual Network should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Dev Test Virtual Network. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  /// [subnet] A `subnet` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  VirtualNetworkArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> labName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<VirtualNetworkSubnet>? subnet,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      labName = pulumi.Input.asInput<String>(labName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subnet = pulumi.Input.asOptionalInput<VirtualNetworkSubnet>(subnet),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labName': labName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'subnet': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkSubnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory VirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labName: pulumi.Output.create<String>(map['labName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subnet: map['subnet'] == null ? null : pulumi.Output.create<VirtualNetworkSubnet>(VirtualNetworkSubnet.fromMap((map['subnet'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

