// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProductApi resources.
class ProductApiState {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The Name of the API Management API within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiName;
  /// The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? productId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ProductApiState].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [apiName] The Name of the API Management API within the API Management Service. Changing this forces a new resource to be created.
  /// [productId] The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  ProductApiState({
    this.apiManagementName,
    this.apiName,
    this.productId,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'apiName': ?apiName,
      'productId': ?productId,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ProductApiState.fromMap(Map<String, dynamic> map) {
    return ProductApiState(
      apiManagementName: map['apiManagementName'] == null ? null : (map['apiManagementName'] as String).input(),
      apiName: map['apiName'] == null ? null : (map['apiName'] as String).input(),
      productId: map['productId'] == null ? null : (map['productId'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
    );
  }
}

