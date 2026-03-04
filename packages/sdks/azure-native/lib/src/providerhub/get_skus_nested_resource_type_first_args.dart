// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providerhub_get_skus_nested_resource_type_first_args_doc}
/// Arguments for getSkusNestedResourceTypeFirst.
/// {@endtemplate}
/// {@macro pulumi_providerhub_get_skus_nested_resource_type_first_args_doc}
class GetSkusNestedResourceTypeFirstArgs {
  /// The first child resource type.
  final pulumi.Input<String> nestedResourceTypeFirst;

  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;

  /// The resource type.
  final pulumi.Input<String> resourceType;

  /// The SKU.
  final pulumi.Input<String> sku;

  /// Creates a new [GetSkusNestedResourceTypeFirstArgs].
  /// [nestedResourceTypeFirst] The first child resource type.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [resourceType] The resource type.
  /// [sku] The SKU.
  GetSkusNestedResourceTypeFirstArgs({
    required this.nestedResourceTypeFirst,
    required this.providerNamespace,
    required this.resourceType,
    required this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nestedResourceTypeFirst': nestedResourceTypeFirst,
      'providerNamespace': providerNamespace,
      'resourceType': resourceType,
      'sku': sku,
    };
  }

  factory GetSkusNestedResourceTypeFirstArgs.fromMap(Map<String, dynamic> map) {
    return GetSkusNestedResourceTypeFirstArgs(
      nestedResourceTypeFirst: pulumi.Input.fromValue(
        map['nestedResourceTypeFirst'] as String,
      ),
      providerNamespace: pulumi.Input.fromValue(
        map['providerNamespace'] as String,
      ),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      sku: pulumi.Input.fromValue(map['sku'] as String),
    );
  }
}
