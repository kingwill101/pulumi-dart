// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_product_get_product_args_doc}
/// Arguments for getProduct.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_product_get_product_args_doc}
class GetProductArgs {
  /// The Name of the API Management Service in which this Product exists.
  final pulumi.Input<String> apiManagementName;
  /// The Identifier for the API Management Product.
  final pulumi.Input<String> productId;
  /// The Name of the Resource Group in which the API Management Service exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProductArgs].
  /// [apiManagementName] The Name of the API Management Service in which this Product exists.
  /// [productId] The Identifier for the API Management Product.
  /// [resourceGroupName] The Name of the Resource Group in which the API Management Service exists.
  GetProductArgs({
    required this.apiManagementName,
    required this.productId,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProductArgs.fromMap(Map<String, dynamic> map) {
    return GetProductArgs(
      apiManagementName: (map['apiManagementName'] as String).input(),
      productId: (map['productId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

