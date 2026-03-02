// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_rest_api_poller_data_connector_args_doc}
/// Arguments for getRestApiPollerDataConnector.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_rest_api_poller_data_connector_args_doc}
class GetRestApiPollerDataConnectorArgs {
  /// Connector ID
  final pulumi.Input<String> dataConnectorId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetRestApiPollerDataConnectorArgs].
  /// [dataConnectorId] Connector ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetRestApiPollerDataConnectorArgs({
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

  factory GetRestApiPollerDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetRestApiPollerDataConnectorArgs(
      dataConnectorId: (map['dataConnectorId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

