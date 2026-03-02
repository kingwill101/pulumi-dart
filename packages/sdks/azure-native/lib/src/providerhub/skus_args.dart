// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_resource_properties.dart';

/// {@template pulumi_providerhub_skus_args_doc}
/// The set of arguments for Skus.
/// {@endtemplate}
/// {@macro pulumi_providerhub_skus_args_doc}
class SkusArgs {
  final pulumi.Input<SkuResourceProperties>? properties;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The resource type.
  final pulumi.Input<String> resourceType;
  /// The SKU.
  final pulumi.Input<String>? sku;

  /// Creates a new [SkusArgs].
  /// [properties] Optional.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [resourceType] The resource type.
  /// [sku] The SKU.
  SkusArgs({
    this.properties,
    required this.providerNamespace,
    required this.resourceType,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<SkuResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerNamespace': providerNamespace,
      'resourceType': resourceType,
      'sku': ?sku,
    };
  }

  factory SkusArgs.fromMap(Map<String, dynamic> map) {
    return SkusArgs(
      properties: map['properties'] == null ? null : (SkuResourceProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      providerNamespace: (map['providerNamespace'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
    );
  }
}

