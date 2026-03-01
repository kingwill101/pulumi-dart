// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_connection_gateway_args_doc}
/// Arguments for getConnectionGateway.
/// {@endtemplate}
/// {@macro pulumi_web_get_connection_gateway_args_doc}
class GetConnectionGatewayArgs {
  /// The connection gateway name
  final pulumi.Input<String> connectionGatewayName;
  /// The resource group
  final pulumi.Input<String> resourceGroupName;
  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [GetConnectionGatewayArgs].
  /// [connectionGatewayName] The connection gateway name
  /// [resourceGroupName] The resource group
  /// [subscriptionId] Subscription Id
  GetConnectionGatewayArgs({
    required pulumi.Output<String> connectionGatewayName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
  }) :
      connectionGatewayName = pulumi.Input.asInput<String>(connectionGatewayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionGatewayName': connectionGatewayName,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GetConnectionGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionGatewayArgs(
      connectionGatewayName: pulumi.Output.create<String>(map['connectionGatewayName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

