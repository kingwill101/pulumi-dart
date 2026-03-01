// ignore_for_file: unused_element, unnecessary_cast


class AiIndexEndpointDeployedIndexAutomaticResources {
  /// The maximum number of replicas this DeployedModel may be deployed on when the traffic against it increases. If maxReplicaCount is not set, the default value is minReplicaCount. The max allowed replica count is 1000.
  /// The maximum number of replicas this DeployedModel may be deployed on when the traffic against it increases. If the requested value is too large, the deployment will error, but if deployment succeeds then the ability to scale the model to that many replicas is guaranteed (barring service outages). If traffic against the DeployedModel increases beyond what its replicas at maximum may handle, a portion of the traffic will be dropped. If this value is not provided, a no upper bound for scaling under heavy traffic will be assume, though Vertex AI may be unable to scale beyond certain replica number.
  final int? maxReplicaCount;
  /// The minimum number of replicas this DeployedModel will be always deployed on. If minReplicaCount is not set, the default value is 2 (we don't provide SLA when minReplicaCount=1).
  /// If traffic against it increases, it may dynamically be deployed onto more replicas up to [maxReplicaCount](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/AutomaticResources#FIELDS.max_replica_count), and as traffic decreases, some of these extra replicas may be freed. If the requested value is too large, the deployment will error.
  final int? minReplicaCount;

  /// Creates a new [AiIndexEndpointDeployedIndexAutomaticResources].
  /// [maxReplicaCount] The maximum number of replicas this DeployedModel may be deployed on when the traffic against it increases. If maxReplicaCount is not set, the default value is minReplicaCount. The max allowed replica count is 1000.
  /// [minReplicaCount] The minimum number of replicas this DeployedModel will be always deployed on. If minReplicaCount is not set, the default value is 2 (we don't provide SLA when minReplicaCount=1).
  AiIndexEndpointDeployedIndexAutomaticResources({
    this.maxReplicaCount,
    this.minReplicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicaCount': ?maxReplicaCount,
      'minReplicaCount': ?minReplicaCount,
    };
  }

  factory AiIndexEndpointDeployedIndexAutomaticResources.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointDeployedIndexAutomaticResources(
      maxReplicaCount: map['maxReplicaCount'] == null ? null : map['maxReplicaCount'] as int,
      minReplicaCount: map['minReplicaCount'] == null ? null : map['minReplicaCount'] as int,
    );
  }
}

