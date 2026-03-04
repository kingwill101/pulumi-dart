// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mcasdata_connector_data_types.dart';

/// {@template pulumi_securityinsights_mcasdata_connector_args_doc}
/// The set of arguments for MCASDataConnector.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_mcasdata_connector_args_doc}
class MCASDataConnectorArgs {
  /// Connector ID
  final pulumi.Input<String>? dataConnectorId;

  /// The available data types for the connector.
  final pulumi.Input<MCASDataConnectorDataTypes> dataTypes;

  /// The kind of the data connector
  /// Expected value is 'MicrosoftCloudAppSecurity'.
  final pulumi.Input<String> kind;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The tenant id to connect to, and get the data from.
  final pulumi.Input<String> tenantId;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [MCASDataConnectorArgs].
  /// [dataConnectorId] Connector ID
  /// [dataTypes] The available data types for the connector.
  /// [kind] The kind of the data connector
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tenantId] The tenant id to connect to, and get the data from.
  /// [workspaceName] The name of the workspace.
  MCASDataConnectorArgs({
    this.dataConnectorId,
    required this.dataTypes,
    required this.kind,
    required this.resourceGroupName,
    required this.tenantId,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorId': ?dataConnectorId,
      'dataTypes':
          pulumi.Input.mapInputValue<
            MCASDataConnectorDataTypes,
            Map<String, dynamic>
          >(dataTypes, (value) => value.toMap()),
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'tenantId': tenantId,
      'workspaceName': workspaceName,
    };
  }

  factory MCASDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return MCASDataConnectorArgs(
      dataConnectorId: (() {
        final guardedValue = map['dataConnectorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataTypes: pulumi.Input.fromValue(
        MCASDataConnectorDataTypes.fromMap(
          (map['dataTypes']! as Map).cast<String, dynamic>(),
        ),
      ),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
