// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodeAllocatableMappedResources describes mapped node allocatable resource allocations.
class NodeAllocatableMappedResources {
  /// Name is the name of the resource (e.g., cpu, memory).
  final pulumi.Input<String> name;
  /// Quantity is the total node allocatable resource capacity allocated for the claim. This claim's allocated devices is shared by all the containers referencing the claim. Kubelet adds this value to both requests and limits at the pod-level cgroup, and to limits at the container-level cgroup for each container referencing the claim.
  final pulumi.Input<String> quantity;

  /// Creates a new [NodeAllocatableMappedResources].
  /// [name] Name is the name of the resource (e.g., cpu, memory).
  /// [quantity] Quantity is the total node allocatable resource capacity allocated for the claim. This claim's allocated devices is shared by all the containers referencing the claim. Kubelet adds this value to both requests and limits at the pod-level cgroup, and to limits at the container-level cgroup for each container referencing the claim.
  const NodeAllocatableMappedResources({
    required this.name,
    required this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'quantity': quantity,
    };
  }

  factory NodeAllocatableMappedResources.fromMap(Map<String, dynamic> map) {
    return NodeAllocatableMappedResources(
      name: pulumi.Input.fromValue(map['name'] as String),
      quantity: pulumi.Input.fromValue(map['quantity'] as String),
    );
  }
}
