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
  final pulumi.Input<SkuResourceProperties?>? properties;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The resource type.
  final pulumi.Input<String> resourceType;
  /// The SKU.
  final pulumi.Input<String?>? sku;

  /// Creates a new [SkusNestedResourceTypeFirstArgs].
  /// [nestedResourceTypeFirst] The first child resource type.
  /// [properties] Optional.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [resourceType] The resource type.
  /// [sku] The SKU.
  const SkusNestedResourceTypeFirstArgs({
    required this.nestedResourceTypeFirst,
    this.properties,
    required this.providerNamespace,
    required this.resourceType,
    this.sku,
  });

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
      nestedResourceTypeFirst: pulumi.Input.fromValue(map['nestedResourceTypeFirst'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuResourceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      providerNamespace: pulumi.Input.fromValue(map['providerNamespace'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
