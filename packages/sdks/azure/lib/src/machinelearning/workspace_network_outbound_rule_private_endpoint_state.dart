// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceNetworkOutboundRulePrivateEndpoint resources.
class WorkspaceNetworkOutboundRulePrivateEndpointState {
  /// Specifies the name of the Machine Learning Workspace Network Outbound Rule Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the Service Resource ID to connect. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Supported service resources: **Key Vault**, **Storage Account**, **Machine Learning Workspace**, **Redis**.
  final pulumi.Input<String>? serviceResourceId;
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
  final pulumi.Input<String>? subResourceTarget;
  /// Specifies the ID of the Machine Learning Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceNetworkOutboundRulePrivateEndpointState].
  /// [name] Specifies the name of the Machine Learning Workspace Network Outbound Rule Private Endpoint. Changing this forces a new resource to be created.
  /// [serviceResourceId] Specifies the Service Resource ID to connect. Changing this forces a new resource to be created.
  /// [sparkEnabled] Whether to enable an additional private endpoint to be used by jobs running on Spark. Changing this forces a new resource to be created.
  /// [subResourceTarget] Specifies the Sub Resource of the service resource to connect to. Possible values are `vault`,`amlworkspace`,`blob`,`table`,`queue`,`file`,`web`,`dfs`, `redisCache`. Changing this forces a new resource to be created.
  /// [workspaceId] Specifies the ID of the Machine Learning Workspace. Changing this forces a new resource to be created.
  WorkspaceNetworkOutboundRulePrivateEndpointState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? serviceResourceId,
    pulumi.Output<bool>? sparkEnabled,
    pulumi.Output<String>? subResourceTarget,
    pulumi.Output<String>? workspaceId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      serviceResourceId = pulumi.Input.asOptionalInput<String>(serviceResourceId),
      sparkEnabled = pulumi.Input.asOptionalInput<bool>(sparkEnabled),
      subResourceTarget = pulumi.Input.asOptionalInput<String>(subResourceTarget),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'serviceResourceId': ?serviceResourceId,
      'sparkEnabled': ?sparkEnabled,
      'subResourceTarget': ?subResourceTarget,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceNetworkOutboundRulePrivateEndpointState.fromMap(Map<String, dynamic> map) {
    return WorkspaceNetworkOutboundRulePrivateEndpointState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      serviceResourceId: map['serviceResourceId'] == null ? null : pulumi.Output.create<String>(map['serviceResourceId'] as String),
      sparkEnabled: map['sparkEnabled'] == null ? null : pulumi.Output.create<bool>(map['sparkEnabled'] as bool),
      subResourceTarget: map['subResourceTarget'] == null ? null : pulumi.Output.create<String>(map['subResourceTarget'] as String),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

