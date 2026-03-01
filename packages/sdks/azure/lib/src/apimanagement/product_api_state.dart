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
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? apiName,
    pulumi.Output<String>? productId,
    pulumi.Output<String>? resourceGroupName,
  }) :
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      apiName = pulumi.Input.asOptionalInput<String>(apiName),
      productId = pulumi.Input.asOptionalInput<String>(productId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      apiName: map['apiName'] == null ? null : pulumi.Output.create<String>(map['apiName'] as String),
      productId: map['productId'] == null ? null : pulumi.Output.create<String>(map['productId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

