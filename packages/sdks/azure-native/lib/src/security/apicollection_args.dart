// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_apicollection_args_doc}
/// The set of arguments for APICollection.
/// {@endtemplate}
/// {@macro pulumi_security_apicollection_args_doc}
class APICollectionArgs {
  /// A string representing the apiCollections resource within the Microsoft.Security provider namespace. This string matches the Azure API Management API name.
  final pulumi.Input<String>? apiCollectionId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [APICollectionArgs].
  /// [apiCollectionId] A string representing the apiCollections resource within the Microsoft.Security provider namespace. This string matches the Azure API Management API name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  APICollectionArgs({
    pulumi.Output<String>? apiCollectionId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      apiCollectionId = pulumi.Input.asOptionalInput<String>(apiCollectionId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiCollectionId': ?apiCollectionId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory APICollectionArgs.fromMap(Map<String, dynamic> map) {
    return APICollectionArgs(
      apiCollectionId: map['apiCollectionId'] == null ? null : pulumi.Output.create<String>(map['apiCollectionId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

