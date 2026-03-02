// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_tidata_connector_args_doc}
/// Arguments for getTIDataConnector.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_tidata_connector_args_doc}
class GetTIDataConnectorArgs {
  /// Connector ID
  final pulumi.Input<String> dataConnectorId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetTIDataConnectorArgs].
  /// [dataConnectorId] Connector ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetTIDataConnectorArgs({
    required this.dataConnectorId,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorId': dataConnectorId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetTIDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetTIDataConnectorArgs(
      dataConnectorId: (map['dataConnectorId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

