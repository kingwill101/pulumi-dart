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
    required pulumi.Output<String> nestedResourceTypeFirst,
    required pulumi.Output<String> providerNamespace,
    required pulumi.Output<String> resourceType,
    required pulumi.Output<String> sku,
  }) :
      nestedResourceTypeFirst = pulumi.Input.asInput<String>(nestedResourceTypeFirst),
      providerNamespace = pulumi.Input.asInput<String>(providerNamespace),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      sku = pulumi.Input.asInput<String>(sku);

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
      nestedResourceTypeFirst: pulumi.Output.create<String>(map['nestedResourceTypeFirst'] as String),
      providerNamespace: pulumi.Output.create<String>(map['providerNamespace'] as String),
      resourceType: pulumi.Output.create<String>(map['resourceType'] as String),
      sku: pulumi.Output.create<String>(map['sku'] as String),
    );
  }
}

