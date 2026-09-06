// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_apicollection_by_azure_api_management_service_args_doc}
/// The set of arguments for APICollectionByAzureApiManagementService.
/// {@endtemplate}
/// {@macro pulumi_security_apicollection_by_azure_api_management_service_args_doc}
class APICollectionByAzureApiManagementServiceArgs {
  /// API revision identifier. Must be unique in the API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String?>? apiId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [APICollectionByAzureApiManagementServiceArgs].
  /// [apiId] API revision identifier. Must be unique in the API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  const APICollectionByAzureApiManagementServiceArgs({
    this.apiId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory APICollectionByAzureApiManagementServiceArgs.fromMap(Map<String, dynamic> map) {
    return APICollectionByAzureApiManagementServiceArgs(
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
