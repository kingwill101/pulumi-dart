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
    required pulumi.Output<String> apiManagementName,
    required pulumi.Output<String> productId,
    required pulumi.Output<String> resourceGroupName,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      productId = pulumi.Input.asInput<String>(productId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProductArgs.fromMap(Map<String, dynamic> map) {
    return GetProductArgs(
      apiManagementName: pulumi.Output.create<String>(map['apiManagementName'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

