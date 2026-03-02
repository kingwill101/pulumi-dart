// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_resource_properties.dart';

/// {@template pulumi_providerhub_skus_nested_resource_type_third_args_doc}
/// The set of arguments for SkusNestedResourceTypeThird.
/// {@endtemplate}
/// {@macro pulumi_providerhub_skus_nested_resource_type_third_args_doc}
class SkusNestedResourceTypeThirdArgs {
  /// The first child resource type.
  final pulumi.Input<String> nestedResourceTypeFirst;
  /// The second child resource type.
  final pulumi.Input<String> nestedResourceTypeSecond;
  /// The third child resource type.
  final pulumi.Input<String> nestedResourceTypeThird;
  final pulumi.Input<SkuResourceProperties>? properties;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The resource type.
  final pulumi.Input<String> resourceType;
  /// The SKU.
  final pulumi.Input<String>? sku;

  /// Creates a new [SkusNestedResourceTypeThirdArgs].
  /// [nestedResourceTypeFirst] The first child resource type.
  /// [nestedResourceTypeSecond] The second child resource type.
  /// [nestedResourceTypeThird] The third child resource type.
  /// [properties] Optional.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [resourceType] The resource type.
  /// [sku] The SKU.
  SkusNestedResourceTypeThirdArgs({
    required this.nestedResourceTypeFirst,
    required this.nestedResourceTypeSecond,
    required this.nestedResourceTypeThird,
    this.properties,
    required this.providerNamespace,
    required this.resourceType,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nestedResourceTypeFirst': nestedResourceTypeFirst,
      'nestedResourceTypeSecond': nestedResourceTypeSecond,
      'nestedResourceTypeThird': nestedResourceTypeThird,
      'properties': ?pulumi.Input.mapOptionalInputValue<SkuResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerNamespace': providerNamespace,
      'resourceType': resourceType,
      'sku': ?sku,
    };
  }

  factory SkusNestedResourceTypeThirdArgs.fromMap(Map<String, dynamic> map) {
    return SkusNestedResourceTypeThirdArgs(
      nestedResourceTypeFirst: (map['nestedResourceTypeFirst'] as String).input(),
      nestedResourceTypeSecond: (map['nestedResourceTypeSecond'] as String).input(),
      nestedResourceTypeThird: (map['nestedResourceTypeThird'] as String).input(),
      properties: map['properties'] == null ? null : (SkuResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      providerNamespace: (map['providerNamespace'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      sku: map['sku'] == null ? null : (map['sku'] as String).input(),
    );
  }
}

