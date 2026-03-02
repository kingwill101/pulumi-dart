// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearning_workspace_network_outbound_rule_private_endpoint_workspace_network_outbound_rule_private_endpoint_args_doc}
/// The set of arguments for WorkspaceNetworkOutboundRulePrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_machinelearning_workspace_network_outbound_rule_private_endpoint_workspace_network_outbound_rule_private_endpoint_args_doc}
class WorkspaceNetworkOutboundRulePrivateEndpointArgs {
  /// Specifies the name of the Machine Learning Workspace Network Outbound Rule Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the Service Resource ID to connect. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Supported service resources: **Key Vault**, **Storage Account**, **Machine Learning Workspace**, **Redis**.
  final pulumi.Input<String> serviceResourceId;
  /// Whether to enable an additional private endpoint to be used by jobs running on Spark. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? sparkEnabled;
  /// Specifies the Sub Resource of the service resource to connect to. Possible values are `vault`,`amlworkspace`,`blob`,`table`,`queue`,`file`,`web`,`dfs`, `redisCache`. Changing this forces a new resource to be created.
  ///
  /// | Service                    | Sub Resource Type                         |
  /// |----------------------------|-------------------------------------------|
  /// | Machine Learning Workspace | `amlworkspace`                            |
  /// | Redis                      | `redisCache`                              |
  /// | Storage Account            | `blob`,`table`,`queue`,`file`,`web`,`dfs` |
  /// | Key Vault                  | `vault`                                   |
  final pulumi.Input<String> subResourceTarget;
  /// Specifies the ID of the Machine Learning Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceNetworkOutboundRulePrivateEndpointArgs].
  /// [name] Specifies the name of the Machine Learning Workspace Network Outbound Rule Private Endpoint. Changing this forces a new resource to be created.
  /// [serviceResourceId] Specifies the Service Resource ID to connect. Changing this forces a new resource to be created.
  /// [sparkEnabled] Whether to enable an additional private endpoint to be used by jobs running on Spark. Changing this forces a new resource to be created.
  /// [subResourceTarget] Specifies the Sub Resource of the service resource to connect to. Possible values are `vault`,`amlworkspace`,`blob`,`table`,`queue`,`file`,`web`,`dfs`, `redisCache`. Changing this forces a new resource to be created.
  /// [workspaceId] Specifies the ID of the Machine Learning Workspace. Changing this forces a new resource to be created.
  WorkspaceNetworkOutboundRulePrivateEndpointArgs({
    this.name,
    required this.serviceResourceId,
    this.sparkEnabled,
    required this.subResourceTarget,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'serviceResourceId': serviceResourceId,
      'sparkEnabled': ?sparkEnabled,
      'subResourceTarget': subResourceTarget,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceNetworkOutboundRulePrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceNetworkOutboundRulePrivateEndpointArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      serviceResourceId: (map['serviceResourceId'] as String).input(),
      sparkEnabled: map['sparkEnabled'] == null ? null : (map['sparkEnabled'] as bool).input(),
      subResourceTarget: (map['subResourceTarget'] as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

