// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_get_private_endpoint_connection_controller_args_doc}
/// Arguments for getPrivateEndpointConnectionController.
/// {@endtemplate}
/// {@macro pulumi_offazure_get_private_endpoint_connection_controller_args_doc}
class GetPrivateEndpointConnectionControllerArgs {
  /// Private link resource name.
  final pulumi.Input<String> peConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;

  /// Creates a new [GetPrivateEndpointConnectionControllerArgs].
  /// [peConnectionName] Private link resource name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  GetPrivateEndpointConnectionControllerArgs({
    required pulumi.Output<String> peConnectionName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> siteName,
  }) :
      peConnectionName = pulumi.Input.asInput<String>(peConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peConnectionName': peConnectionName,
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
    };
  }

  factory GetPrivateEndpointConnectionControllerArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionControllerArgs(
      peConnectionName: pulumi.Output.create<String>(map['peConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteName: pulumi.Output.create<String>(map['siteName'] as String),
    );
  }
}

