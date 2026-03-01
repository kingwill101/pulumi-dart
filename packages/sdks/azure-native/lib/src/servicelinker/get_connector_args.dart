// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicelinker_get_connector_args_doc}
/// Arguments for getConnector.
/// {@endtemplate}
/// {@macro pulumi_servicelinker_get_connector_args_doc}
class GetConnectorArgs {
  /// The name of resource.
  final pulumi.Input<String> connectorName;
  /// The name of Azure region.
  final pulumi.Input<String> location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the target subscription.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [GetConnectorArgs].
  /// [connectorName] The name of resource.
  /// [location] The name of Azure region.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subscriptionId] The ID of the target subscription.
  GetConnectorArgs({
    required pulumi.Output<String> connectorName,
    required pulumi.Output<String> location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
  }) :
      connectorName = pulumi.Input.asInput<String>(connectorName),
      location = pulumi.Input.asInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': connectorName,
      'location': location,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GetConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectorArgs(
      connectorName: pulumi.Output.create<String>(map['connectorName'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

