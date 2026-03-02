// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProductGroup resources.
class ProductGroupState {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? groupName;
  /// The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? productId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ProductGroupState].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [groupName] The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created.
  /// [productId] The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  ProductGroupState({
    this.apiManagementName,
    this.groupName,
    this.productId,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'groupName': ?groupName,
      'productId': ?productId,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ProductGroupState.fromMap(Map<String, dynamic> map) {
    return ProductGroupState(
      apiManagementName: map['apiManagementName'] == null ? null : (map['apiManagementName']! as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName']! as String).input(),
      productId: map['productId'] == null ? null : (map['productId']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
    );
  }
}

