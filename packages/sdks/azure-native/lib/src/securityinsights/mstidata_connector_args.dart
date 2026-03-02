// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mstidata_connector_data_types.dart';

/// {@template pulumi_securityinsights_mstidata_connector_args_doc}
/// The set of arguments for MSTIDataConnector.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_mstidata_connector_args_doc}
class MSTIDataConnectorArgs {
  /// Connector ID
  final pulumi.Input<String>? dataConnectorId;
  /// The available data types for the connector.
  final pulumi.Input<MSTIDataConnectorDataTypes> dataTypes;
  /// The kind of the data connector
  /// Expected value is 'MicrosoftThreatIntelligence'.
  final pulumi.Input<String> kind;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tenant id to connect to, and get the data from.
  final pulumi.Input<String> tenantId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [MSTIDataConnectorArgs].
  /// [dataConnectorId] Connector ID
  /// [dataTypes] The available data types for the connector.
  /// [kind] The kind of the data connector
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tenantId] The tenant id to connect to, and get the data from.
  /// [workspaceName] The name of the workspace.
  MSTIDataConnectorArgs({
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
      'dataTypes': pulumi.Input.mapInputValue<MSTIDataConnectorDataTypes, Map<String, dynamic>>(dataTypes, (value) => value.toMap()),
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'tenantId': tenantId,
      'workspaceName': workspaceName,
    };
  }

  factory MSTIDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return MSTIDataConnectorArgs(
      dataConnectorId: map['dataConnectorId'] == null ? null : (map['dataConnectorId'] as String).input(),
      dataTypes: (MSTIDataConnectorDataTypes.fromMap((map['dataTypes'] as Map).cast<String, dynamic>())).input(),
      kind: (map['kind'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

