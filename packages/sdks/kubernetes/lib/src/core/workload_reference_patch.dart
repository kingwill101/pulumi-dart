// ignore_for_file: unused_element, unnecessary_cast


/// WorkloadReference identifies the Workload object and PodGroup membership that a Pod belongs to. The scheduler uses this information to apply workload-aware scheduling semantics.
class WorkloadReferencePatch {
  /// Name defines the name of the Workload object this Pod belongs to. Workload must be in the same namespace as the Pod. If it doesn't match any existing Workload, the Pod will remain unschedulable until a Workload object is created and observed by the kube-scheduler. It must be a DNS subdomain.
  final String? name;
  /// PodGroup is the name of the PodGroup within the Workload that this Pod belongs to. If it doesn't match any existing PodGroup within the Workload, the Pod will remain unschedulable until the Workload object is recreated and observed by the kube-scheduler. It must be a DNS label.
  final String? podGroup;
  /// PodGroupReplicaKey specifies the replica key of the PodGroup to which this Pod belongs. It is used to distinguish pods belonging to different replicas of the same pod group. The pod group policy is applied separately to each replica. When set, it must be a DNS label.
  final String? podGroupReplicaKey;

  /// Creates a new [WorkloadReferencePatch].
  /// [name] Name defines the name of the Workload object this Pod belongs to. Workload must be in the same namespace as the Pod. If it doesn't match any existing Workload, the Pod will remain unschedulable until a Workload object is created and observed by the kube-scheduler. It must be a DNS subdomain.
  /// [podGroup] PodGroup is the name of the PodGroup within the Workload that this Pod belongs to. If it doesn't match any existing PodGroup within the Workload, the Pod will remain unschedulable until the Workload object is recreated and observed by the kube-scheduler. It must be a DNS label.
  /// [podGroupReplicaKey] PodGroupReplicaKey specifies the replica key of the PodGroup to which this Pod belongs. It is used to distinguish pods belonging to different replicas of the same pod group. The pod group policy is applied separately to each replica. When set, it must be a DNS label.
  WorkloadReferencePatch({
    this.name,
    this.podGroup,
    this.podGroupReplicaKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'podGroup': ?podGroup,
      'podGroupReplicaKey': ?podGroupReplicaKey,
    };
  }

  factory WorkloadReferencePatch.fromMap(Map<String, dynamic> map) {
    return WorkloadReferencePatch(
      name: map['name'] == null ? null : map['name'] as String,
      podGroup: map['podGroup'] == null ? null : map['podGroup'] as String,
      podGroupReplicaKey: map['podGroupReplicaKey'] == null ? null : map['podGroupReplicaKey'] as String,
    );
  }
}

