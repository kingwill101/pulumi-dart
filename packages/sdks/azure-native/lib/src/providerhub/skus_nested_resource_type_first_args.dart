// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_resource_properties.dart';

/// {@template pulumi_providerhub_skus_nested_resource_type_first_args_doc}
/// The set of arguments for SkusNestedResourceTypeFirst.
/// {@endtemplate}
/// {@macro pulumi_providerhub_skus_nested_resource_type_first_args_doc}
class SkusNestedResourceTypeFirstArgs {
  /// The first child resource type.
  final pulumi.Input<String> nestedResourceTypeFirst;
  final pulumi.Input<SkuResourceProperties>? properties;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The resource type.
  final pulumi.Input<String> resourceType;
  /// The SKU.
  final pulumi.Input<String>? sku;

  /// Creates a new [SkusNestedResourceTypeFirstArgs].
  /// [nestedResourceTypeFirst] The first child resource type.
  /// [properties] Optional.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [resourceType] The resource type.
  /// [sku] The SKU.
  SkusNestedResourceTypeFirstArgs({
    required pulumi.Output<String> nestedResourceTypeFirst,
    pulumi.Output<SkuResourceProperties>? properties,
    required pulumi.Output<String> providerNamespace,
    required pulumi.Output<String> resourceType,
    pulumi.Output<String>? sku,
  }) :
      nestedResourceTypeFirst = pulumi.Input.asInput<String>(nestedResourceTypeFirst),
      properties = pulumi.Input.asOptionalInput<SkuResourceProperties>(properties),
      providerNamespace = pulumi.Input.asInput<String>(providerNamespace),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      sku = pulumi.Input.asOptionalInput<String>(sku);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nestedResourceTypeFirst': nestedResourceTypeFirst,
      'properties': ?pulumi.Input.mapOptionalInputValue<SkuResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerNamespace': providerNamespace,
      'resourceType': resourceType,
      'sku': ?sku,
    };
  }

  factory SkusNestedResourceTypeFirstArgs.fromMap(Map<String, dynamic> map) {
    return SkusNestedResourceTypeFirstArgs(
      nestedResourceTypeFirst: pulumi.Output.create<String>(map['nestedResourceTypeFirst'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<SkuResourceProperties>(SkuResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      providerNamespace: pulumi.Output.create<String>(map['providerNamespace'] as String),
      resourceType: pulumi.Output.create<String>(map['resourceType'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
    );
  }
}

