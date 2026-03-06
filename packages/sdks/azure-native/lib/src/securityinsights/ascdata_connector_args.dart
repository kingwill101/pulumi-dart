// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alerts_data_type_of_data_connector.dart';

/// {@template pulumi_securityinsights_ascdata_connector_args_doc}
/// The set of arguments for ASCDataConnector.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_ascdata_connector_args_doc}
class ASCDataConnectorArgs {
  /// Connector ID
  final pulumi.Input<String>? dataConnectorId;
  /// The available data types for the connector.
  final pulumi.Input<AlertsDataTypeOfDataConnector>? dataTypes;
  /// The kind of the data connector
  /// Expected value is 'AzureSecurityCenter'.
  final pulumi.Input<String> kind;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The subscription id to connect to, and get the data from.
  final pulumi.Input<String>? subscriptionId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ASCDataConnectorArgs].
  /// [dataConnectorId] Connector ID
  /// [dataTypes] The available data types for the connector.
  /// [kind] The kind of the data connector
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subscriptionId] The subscription id to connect to, and get the data from.
  /// [workspaceName] The name of the workspace.
  const ASCDataConnectorArgs({
    this.dataConnectorId,
    this.dataTypes,
    required this.kind,
    required this.resourceGroupName,
    this.subscriptionId,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorId': ?dataConnectorId,
      'dataTypes': ?pulumi.Input.mapOptionalInputValue<AlertsDataTypeOfDataConnector, Map<String, dynamic>>(dataTypes, (value) => value.toMap()),
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'workspaceName': workspaceName,
    };
  }

  factory ASCDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ASCDataConnectorArgs(
      dataConnectorId: (() { final guardedValue = map['dataConnectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataTypes: (() { final guardedValue = map['dataTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertsDataTypeOfDataConnector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

