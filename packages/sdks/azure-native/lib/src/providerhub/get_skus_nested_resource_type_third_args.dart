// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providerhub_get_skus_nested_resource_type_third_args_doc}
/// Arguments for getSkusNestedResourceTypeThird.
/// {@endtemplate}
/// {@macro pulumi_providerhub_get_skus_nested_resource_type_third_args_doc}
class GetSkusNestedResourceTypeThirdArgs {
  /// The first child resource type.
  final pulumi.Input<String> nestedResourceTypeFirst;
  /// The second child resource type.
  final pulumi.Input<String> nestedResourceTypeSecond;
  /// The third child resource type.
  final pulumi.Input<String> nestedResourceTypeThird;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The resource type.
  final pulumi.Input<String> resourceType;
  /// The SKU.
  final pulumi.Input<String> sku;

  /// Creates a new [GetSkusNestedResourceTypeThirdArgs].
  /// [nestedResourceTypeFirst] The first child resource type.
  /// [nestedResourceTypeSecond] The second child resource type.
  /// [nestedResourceTypeThird] The third child resource type.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [resourceType] The resource type.
  /// [sku] The SKU.
  GetSkusNestedResourceTypeThirdArgs({
    required this.nestedResourceTypeFirst,
    required this.nestedResourceTypeSecond,
    required this.nestedResourceTypeThird,
    required this.providerNamespace,
    required this.resourceType,
    required this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nestedResourceTypeFirst': nestedResourceTypeFirst,
      'nestedResourceTypeSecond': nestedResourceTypeSecond,
      'nestedResourceTypeThird': nestedResourceTypeThird,
      'providerNamespace': providerNamespace,
      'resourceType': resourceType,
      'sku': sku,
    };
  }

  factory GetSkusNestedResourceTypeThirdArgs.fromMap(Map<String, dynamic> map) {
    return GetSkusNestedResourceTypeThirdArgs(
      nestedResourceTypeFirst: (map['nestedResourceTypeFirst'] as String).input(),
      nestedResourceTypeSecond: (map['nestedResourceTypeSecond'] as String).input(),
      nestedResourceTypeThird: (map['nestedResourceTypeThird'] as String).input(),
      providerNamespace: (map['providerNamespace'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      sku: (map['sku'] as String).input(),
    );
  }
}

