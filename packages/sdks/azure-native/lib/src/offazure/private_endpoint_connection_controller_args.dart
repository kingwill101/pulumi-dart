// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// {@template pulumi_offazure_private_endpoint_connection_controller_args_doc}
/// The set of arguments for PrivateEndpointConnectionController.
/// {@endtemplate}
/// {@macro pulumi_offazure_private_endpoint_connection_controller_args_doc}
class PrivateEndpointConnectionControllerArgs {
  /// Private link resource name.
  final pulumi.Input<String>? peConnectionName;
  /// private endpoints connection state
  final pulumi.Input<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;

  /// Creates a new [PrivateEndpointConnectionControllerArgs].
  /// [peConnectionName] Private link resource name.
  /// [privateLinkServiceConnectionState] private endpoints connection state
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  PrivateEndpointConnectionControllerArgs({
    this.peConnectionName,
    this.privateLinkServiceConnectionState,
    required this.resourceGroupName,
    required this.siteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peConnectionName': ?peConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
    };
  }

  factory PrivateEndpointConnectionControllerArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionControllerArgs(
      peConnectionName: map['peConnectionName'] == null ? null : (map['peConnectionName'] as String).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      siteName: (map['siteName'] as String).input(),
    );
  }
}

