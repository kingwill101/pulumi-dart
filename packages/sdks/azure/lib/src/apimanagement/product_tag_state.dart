// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProductTag resources.
class ProductTagState {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The name of the API Management product. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementProductId;
  /// The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ProductTagState].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [apiManagementProductId] The name of the API Management product. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created.
  ProductTagState({
    this.apiManagementName,
    this.apiManagementProductId,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'apiManagementProductId': ?apiManagementProductId,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ProductTagState.fromMap(Map<String, dynamic> map) {
    return ProductTagState(
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiManagementProductId: (() { final guardedValue = map['apiManagementProductId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

