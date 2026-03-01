// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'office_data_connector_data_types.dart';

/// {@template pulumi_securityinsights_office_data_connector_args_doc}
/// The set of arguments for OfficeDataConnector.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_office_data_connector_args_doc}
class OfficeDataConnectorArgs {
  /// Connector ID
  final pulumi.Input<String>? dataConnectorId;
  /// The available data types for the connector.
  final pulumi.Input<OfficeDataConnectorDataTypes> dataTypes;
  /// The kind of the data connector
  /// Expected value is 'Office365'.
  final pulumi.Input<String> kind;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tenant id to connect to, and get the data from.
  final pulumi.Input<String> tenantId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [OfficeDataConnectorArgs].
  /// [dataConnectorId] Connector ID
  /// [dataTypes] The available data types for the connector.
  /// [kind] The kind of the data connector
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tenantId] The tenant id to connect to, and get the data from.
  /// [workspaceName] The name of the workspace.
  OfficeDataConnectorArgs({
    pulumi.Output<String>? dataConnectorId,
    required pulumi.Output<OfficeDataConnectorDataTypes> dataTypes,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> tenantId,
    required pulumi.Output<String> workspaceName,
  }) :
      dataConnectorId = pulumi.Input.asOptionalInput<String>(dataConnectorId),
      dataTypes = pulumi.Input.asInput<OfficeDataConnectorDataTypes>(dataTypes),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tenantId = pulumi.Input.asInput<String>(tenantId),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorId': ?dataConnectorId,
      'dataTypes': pulumi.Input.mapInputValue<OfficeDataConnectorDataTypes, Map<String, dynamic>>(dataTypes, (value) => value.toMap()),
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'tenantId': tenantId,
      'workspaceName': workspaceName,
    };
  }

  factory OfficeDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return OfficeDataConnectorArgs(
      dataConnectorId: map['dataConnectorId'] == null ? null : pulumi.Output.create<String>(map['dataConnectorId'] as String),
      dataTypes: pulumi.Output.create<OfficeDataConnectorDataTypes>(OfficeDataConnectorDataTypes.fromMap((map['dataTypes'] as Map).cast<String, dynamic>())),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tenantId: pulumi.Output.create<String>(map['tenantId'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

