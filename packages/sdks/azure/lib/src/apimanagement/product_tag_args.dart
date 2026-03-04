// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_product_tag_product_tag_args_doc}
/// The set of arguments for ProductTag.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_product_tag_product_tag_args_doc}
class ProductTagArgs {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;

  /// The name of the API Management product. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementProductId;

  /// The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created.
  final pulumi.Input<String>? name;

  /// The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ProductTagArgs].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [apiManagementProductId] The name of the API Management product. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created.
  ProductTagArgs({
    required this.apiManagementName,
    required this.apiManagementProductId,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'apiManagementProductId': apiManagementProductId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ProductTagArgs.fromMap(Map<String, dynamic> map) {
    return ProductTagArgs(
      apiManagementName: pulumi.Input.fromValue(
        map['apiManagementName'] as String,
      ),
      apiManagementProductId: pulumi.Input.fromValue(
        map['apiManagementProductId'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
