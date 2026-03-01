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
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? productId,
    pulumi.Output<String>? resourceGroupName,
  }) :
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      productId = pulumi.Input.asOptionalInput<String>(productId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      productId: map['productId'] == null ? null : pulumi.Output.create<String>(map['productId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

