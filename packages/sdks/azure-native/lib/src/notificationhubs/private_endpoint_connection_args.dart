// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties.dart';

/// {@template pulumi_notificationhubs_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// Namespace name
  final pulumi.Input<String> namespaceName;
  /// Private Endpoint Connection Name
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Private Endpoint Connection properties.
  final pulumi.Input<PrivateEndpointConnectionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [namespaceName] Namespace name
  /// [privateEndpointConnectionName] Private Endpoint Connection Name
  /// [properties] Private Endpoint Connection properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  PrivateEndpointConnectionArgs({
    required this.namespaceName,
    this.privateEndpointConnectionName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      namespaceName: (map['namespaceName'] as String).input(),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : (map['privateEndpointConnectionName'] as String).input(),
      properties: map['properties'] == null ? null : (PrivateEndpointConnectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

