// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alerts_data_type_of_data_connector.dart';

/// {@template pulumi_securityinsights_aaddata_connector_args_doc}
/// The set of arguments for AADDataConnector.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_aaddata_connector_args_doc}
class AADDataConnectorArgs {
  /// Connector ID
  final pulumi.Input<String?>? dataConnectorId;
  /// The available data types for the connector.
  final pulumi.Input<AlertsDataTypeOfDataConnector?>? dataTypes;
  /// The kind of the data connector
  /// Expected value is 'AzureActiveDirectory'.
  final pulumi.Input<String> kind;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tenant id to connect to, and get the data from.
  final pulumi.Input<String> tenantId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [AADDataConnectorArgs].
  /// [dataConnectorId] Connector ID
  /// [dataTypes] The available data types for the connector.
  /// [kind] The kind of the data connector
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tenantId] The tenant id to connect to, and get the data from.
  /// [workspaceName] The name of the workspace.
  const AADDataConnectorArgs({
    this.dataConnectorId,
    this.dataTypes,
    required this.kind,
    required this.resourceGroupName,
    required this.tenantId,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorId': ?dataConnectorId,
      'dataTypes': ?pulumi.Input.mapOptionalInputValue<AlertsDataTypeOfDataConnector, Map<String, dynamic>>(dataTypes, (value) => value.toMap()),
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'tenantId': tenantId,
      'workspaceName': workspaceName,
    };
  }

  factory AADDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AADDataConnectorArgs(
      dataConnectorId: (() { final guardedValue = map['dataConnectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataTypes: (() { final guardedValue = map['dataTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertsDataTypeOfDataConnector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
