// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_relay_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_relay_namespace_namespace_args_doc}
class NamespaceArgs {
  /// Specifies the supported Azure location where the Azure Relay Namespace exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Azure Relay Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Azure Relay Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the SKU to use. At this time the only supported value is `Standard`.
  final pulumi.Input<String> skuName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NamespaceArgs].
  /// [location] Specifies the supported Azure location where the Azure Relay Namespace exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Azure Relay Namespace. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Azure Relay Namespace. Changing this forces a new resource to be created.
  /// [skuName] The name of the SKU to use. At this time the only supported value is `Standard`.
  /// [tags] A mapping of tags to assign to the resource.
  NamespaceArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      skuName: (map['skuName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

