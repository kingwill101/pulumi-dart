// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_api_get_api_args_doc}
/// Arguments for getApi.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_api_get_api_args_doc}
class GetApiArgs {
  /// The name of the API Management Service in which the API Management API exists.
  final pulumi.Input<String> apiManagementName;

  /// The name of the API Management API.
  final pulumi.Input<String> name;

  /// The Name of the Resource Group in which the API Management Service exists.
  final pulumi.Input<String> resourceGroupName;

  /// The Revision of the API Management API.
  final pulumi.Input<String> revision;

  /// Creates a new [GetApiArgs].
  /// [apiManagementName] The name of the API Management Service in which the API Management API exists.
  /// [name] The name of the API Management API.
  /// [resourceGroupName] The Name of the Resource Group in which the API Management Service exists.
  /// [revision] The Revision of the API Management API.
  GetApiArgs({
    required this.apiManagementName,
    required this.name,
    required this.resourceGroupName,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'revision': revision,
    };
  }

  factory GetApiArgs.fromMap(Map<String, dynamic> map) {
    return GetApiArgs(
      apiManagementName: pulumi.Input.fromValue(
        map['apiManagementName'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      revision: pulumi.Input.fromValue(map['revision'] as String),
    );
  }
}
