// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointDeployedModelAutomaticResource {
  /// (Output)
  /// The maximum number of replicas this DeployedModel may be deployed on when the traffic against it increases. If the requested value is too large, the deployment will error, but if deployment succeeds then the ability to scale the model to that many replicas is guaranteed (barring service outages). If traffic against the DeployedModel increases beyond what its replicas at maximum may handle, a portion of the traffic will be dropped. If this value is not provided, a no upper bound for scaling under heavy traffic will be assume, though Vertex AI may be unable to scale beyond certain replica number.
  final pulumi.Input<int>? maxReplicaCount;
  /// (Output)
  /// The minimum number of replicas this DeployedModel will be always deployed on. If traffic against it increases, it may dynamically be deployed onto more replicas up to max_replica_count, and as traffic decreases, some of these extra replicas may be freed. If the requested value is too large, the deployment will error.
  final pulumi.Input<int>? minReplicaCount;

  /// Creates a new [AiEndpointDeployedModelAutomaticResource].
  /// [maxReplicaCount] (Output)
  /// [minReplicaCount] (Output)
  AiEndpointDeployedModelAutomaticResource({
    this.maxReplicaCount,
    this.minReplicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicaCount': ?maxReplicaCount,
      'minReplicaCount': ?minReplicaCount,
    };
  }

  factory AiEndpointDeployedModelAutomaticResource.fromMap(Map<String, dynamic> map) {
    return AiEndpointDeployedModelAutomaticResource(
      maxReplicaCount: map['maxReplicaCount'] == null ? null : (map['maxReplicaCount'] as int).input(),
      minReplicaCount: map['minReplicaCount'] == null ? null : (map['minReplicaCount'] as int).input(),
    );
  }
}

