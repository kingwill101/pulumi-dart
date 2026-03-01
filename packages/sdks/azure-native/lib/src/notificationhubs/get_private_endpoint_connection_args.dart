// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhubs_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// Namespace name
  final pulumi.Input<String> namespaceName;
  /// Private Endpoint Connection Name
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [namespaceName] Namespace name
  /// [privateEndpointConnectionName] Private Endpoint Connection Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPrivateEndpointConnectionArgs({
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> privateEndpointConnectionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      privateEndpointConnectionName: pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

