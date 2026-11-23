// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_development_cluster_cluster_status_nodes_status_physical_host.dart';

class AiModelDevelopmentClusterClusterStatusNodesStatus {
  /// (Output)
  /// Time when the TrainingService was created.
  final pulumi.Input<String?>? createTime;
  /// (Output)
  /// Human-readable detail about the current state.
  final pulumi.Input<String?>? detail;
  /// (Output)
  /// The XManager instance ID (for example, "xmc-").
  final pulumi.Input<String?>? instanceId;
  /// (Output)
  /// The name of the Compute Engine instance associated with the node.
  final pulumi.Input<String?>? instanceName;
  /// (Output)
  /// The time when the node's current state or detail last changed.
  final pulumi.Input<String?>? lastUpdateTime;
  /// (Output)
  /// The ID of the node pool.
  final pulumi.Input<String?>? nodePoolId;
  /// (Output)
  /// The type of the node pool.
  /// Possible values:
  /// NODE_POOL_TYPE_LOGIN
  /// NODE_POOL_TYPE_COMPUTE
  final pulumi.Input<String?>? nodePoolType;
  /// (Output)
  /// The state of the node.
  /// Possible values:
  /// PREPARING
  /// RUNNING
  /// ERROR
  /// UPDATING
  final pulumi.Input<String?>? nodeState;
  /// (Output)
  /// Physical Host Hardware information.
  /// Structure is documented below.
  final pulumi.Input<List<AiModelDevelopmentClusterClusterStatusNodesStatusPhysicalHost>?>? physicalHosts;

  /// Creates a new [AiModelDevelopmentClusterClusterStatusNodesStatus].
  /// [createTime] (Output)
  /// [detail] (Output)
  /// [instanceId] (Output)
  /// [instanceName] (Output)
  /// [lastUpdateTime] (Output)
  /// [nodePoolId] (Output)
  /// [nodePoolType] (Output)
  /// [nodeState] (Output)
  /// [physicalHosts] (Output)
  const AiModelDevelopmentClusterClusterStatusNodesStatus({
    this.createTime,
    this.detail,
    this.instanceId,
    this.instanceName,
    this.lastUpdateTime,
    this.nodePoolId,
    this.nodePoolType,
    this.nodeState,
    this.physicalHosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'detail': ?detail,
      'instanceId': ?instanceId,
      'instanceName': ?instanceName,
      'lastUpdateTime': ?lastUpdateTime,
      'nodePoolId': ?nodePoolId,
      'nodePoolType': ?nodePoolType,
      'nodeState': ?nodeState,
      'physicalHosts': ?pulumi.Input.mapOptionalInputValue<List<AiModelDevelopmentClusterClusterStatusNodesStatusPhysicalHost>, List<Map<String, dynamic>>>(physicalHosts, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterClusterStatusNodesStatusPhysicalHost, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiModelDevelopmentClusterClusterStatusNodesStatus.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterClusterStatusNodesStatus(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detail: (() { final guardedValue = map['detail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdateTime: (() { final guardedValue = map['lastUpdateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodePoolId: (() { final guardedValue = map['nodePoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodePoolType: (() { final guardedValue = map['nodePoolType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeState: (() { final guardedValue = map['nodeState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      physicalHosts: (() { final guardedValue = map['physicalHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterClusterStatusNodesStatusPhysicalHost>(guardedValue, (value) => AiModelDevelopmentClusterClusterStatusNodesStatusPhysicalHost.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
