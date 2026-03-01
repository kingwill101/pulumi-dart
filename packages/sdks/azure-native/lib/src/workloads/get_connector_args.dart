// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_connector_args_doc}
/// Arguments for getConnector.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_connector_args_doc}
class GetConnectorArgs {
  /// The name of the connector resource
  final pulumi.Input<String> connectorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectorArgs].
  /// [connectorName] The name of the connector resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetConnectorArgs({
    required pulumi.Output<String> connectorName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      connectorName = pulumi.Input.asInput<String>(connectorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': connectorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectorArgs(
      connectorName: pulumi.Output.create<String>(map['connectorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

