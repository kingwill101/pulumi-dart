// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_product_group_product_group_args_doc}
/// The set of arguments for ProductGroup.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_product_group_product_group_args_doc}
class ProductGroupArgs {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> groupName;
  /// The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> productId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ProductGroupArgs].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [groupName] The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created.
  /// [productId] The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  ProductGroupArgs({
    required pulumi.Output<String> apiManagementName,
    required pulumi.Output<String> groupName,
    required pulumi.Output<String> productId,
    required pulumi.Output<String> resourceGroupName,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      groupName = pulumi.Input.asInput<String>(groupName),
      productId = pulumi.Input.asInput<String>(productId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'groupName': groupName,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ProductGroupArgs.fromMap(Map<String, dynamic> map) {
    return ProductGroupArgs(
      apiManagementName: pulumi.Output.create<String>(map['apiManagementName'] as String),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

