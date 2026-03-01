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
  ProductApiArgs({
    required pulumi.Output<String> apiManagementName,
    required pulumi.Output<String> apiName,
    required pulumi.Output<String> productId,
    required pulumi.Output<String> resourceGroupName,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      apiName = pulumi.Input.asInput<String>(apiName),
      productId = pulumi.Input.asInput<String>(productId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      apiManagementName: pulumi.Output.create<String>(map['apiManagementName'] as String),
      apiName: pulumi.Output.create<String>(map['apiName'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

