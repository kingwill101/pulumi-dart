// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearning_workspace_network_outbound_rule_private_endpoint_workspace_network_outbound_rule_private_endpoint_args_doc}
/// The set of arguments for WorkspaceNetworkOutboundRulePrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_machinelearning_workspace_network_outbound_rule_private_endpoint_workspace_network_outbound_rule_private_endpoint_args_doc}
class WorkspaceNetworkOutboundRulePrivateEndpointArgs {
  /// Specifies the name of the Machine Learning Workspace Network Outbound Rule Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the Service Resource ID to connect. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Supported service resources: **Key Vault**, **Storage Account**, **Machine Learning Workspace**, **Redis**.
  final pulumi.Input<String> serviceResourceId;
  /// Whether to enable an additional private endpoint to be used by jobs running on Spark. Changing this forces a new resource to be created.
  final pulumi.Input<bool?>? sparkEnabled;
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
  const WorkspaceNetworkOutboundRulePrivateEndpointArgs({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceResourceId: pulumi.Input.fromValue(map['serviceResourceId'] as String),
      sparkEnabled: (() { final guardedValue = map['sparkEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subResourceTarget: pulumi.Input.fromValue(map['subResourceTarget'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
