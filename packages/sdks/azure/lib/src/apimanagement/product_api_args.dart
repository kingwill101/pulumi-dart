// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_product_api_product_api_args_doc}
/// The set of arguments for ProductApi.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_product_api_product_api_args_doc}
class ProductApiArgs {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The Name of the API Management API within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiName;
  /// The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> productId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ProductApiArgs].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [apiName] The Name of the API Management API within the API Management Service. Changing this forces a new resource to be created.
  /// [productId] The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  const ProductApiArgs({
    required this.apiManagementName,
    required this.apiName,
    required this.productId,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'apiName': apiName,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ProductApiArgs.fromMap(Map<String, dynamic> map) {
    return ProductApiArgs(
      apiManagementName: pulumi.Input.fromValue(map['apiManagementName'] as String),
      apiName: pulumi.Input.fromValue(map['apiName'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

