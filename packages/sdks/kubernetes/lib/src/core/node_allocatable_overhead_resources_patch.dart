// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodeAllocatableOverheadResources describes auxiliary overhead resource allocations.
class NodeAllocatableOverheadResourcesPatch {
  /// Name is the name of the resource (e.g., cpu, memory).
  final pulumi.Input<String?>? name;
  /// PerContainer is the variable overhead quantity applied for each container referencing the claim. The container references are recorded in `nodeAllocatableResourceClaimStatuses.containers`. The total overhead quantity allocated for the claim is computed as: Quantity = PerPod + (PerContainer * NumReferences) Kubelet accounts for this overhead in cgroups: - Pod-level cgroup (requests and limits): Kubelet adds PerPod + (PerContainer * NumReferences). - Container-level cgroup (limits only): Kubelet adds PerPod + PerContainer for each referencing container. This allows any single container to access the pod-level overhead, while the parent cgroup caps the total usage to account for PerPod exactly once. At least one of PerPod or PerContainer must be specified. Specifying neither is an invalid configuration.
  final pulumi.Input<String?>? perContainer;
  /// PerPod is the flat overhead quantity allocated per pod. Adding to each container limit allows individual containers to utilize the overhead, while the parent pod-level cgroup limit caps the total usage at the pod boundary where the overhead is accounted for exactly once. At least one of PerPod or PerContainer must be specified. Specifying neither is an invalid configuration.
  final pulumi.Input<String?>? perPod;

  /// Creates a new [NodeAllocatableOverheadResourcesPatch].
  /// [name] Name is the name of the resource (e.g., cpu, memory).
  /// [perContainer] PerContainer is the variable overhead quantity applied for each container referencing the claim. The container references are recorded in `nodeAllocatableResourceClaimStatuses.containers`. The total overhead quantity allocated for the claim is computed as: Quantity = PerPod + (PerContainer * NumReferences) Kubelet accounts for this overhead in cgroups: - Pod-level cgroup (requests and limits): Kubelet adds PerPod + (PerContainer * NumReferences). - Container-level cgroup (limits only): Kubelet adds PerPod + PerContainer for each referencing container. This allows any single container to access the pod-level overhead, while the parent cgroup caps the total usage to account for PerPod exactly once. At least one of PerPod or PerContainer must be specified. Specifying neither is an invalid configuration.
  /// [perPod] PerPod is the flat overhead quantity allocated per pod. Adding to each container limit allows individual containers to utilize the overhead, while the parent pod-level cgroup limit caps the total usage at the pod boundary where the overhead is accounted for exactly once. At least one of PerPod or PerContainer must be specified. Specifying neither is an invalid configuration.
  const NodeAllocatableOverheadResourcesPatch({
    this.name,
    this.perContainer,
    this.perPod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'perContainer': ?perContainer,
      'perPod': ?perPod,
    };
  }

  factory NodeAllocatableOverheadResourcesPatch.fromMap(Map<String, dynamic> map) {
    return NodeAllocatableOverheadResourcesPatch(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      perContainer: (() { final guardedValue = map['perContainer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      perPod: (() { final guardedValue = map['perPod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
