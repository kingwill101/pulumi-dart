// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providerhub_get_skus_args_doc}
/// Arguments for getSkus.
/// {@endtemplate}
/// {@macro pulumi_providerhub_get_skus_args_doc}
class GetSkusArgs {
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The resource type.
  final pulumi.Input<String> resourceType;
  /// The SKU.
  final pulumi.Input<String> sku;

  /// Creates a new [GetSkusArgs].
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [resourceType] The resource type.
  /// [sku] The SKU.
  const GetSkusArgs({
    required this.providerNamespace,
    required this.resourceType,
    required this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerNamespace': providerNamespace,
      'resourceType': resourceType,
      'sku': sku,
    };
  }

  factory GetSkusArgs.fromMap(Map<String, dynamic> map) {
    return GetSkusArgs(
      providerNamespace: pulumi.Input.fromValue(map['providerNamespace'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      sku: pulumi.Input.fromValue(map['sku'] as String),
    );
  }
}
