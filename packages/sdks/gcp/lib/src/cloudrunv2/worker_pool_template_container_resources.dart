// ignore_for_file: unused_element, unnecessary_cast


class WorkerPoolTemplateContainerResources {
  /// Only memory, CPU, and nvidia.com/gpu are supported. Use key `cpu` for CPU limit, `memory` for memory limit, `nvidia.com/gpu` for gpu limit. Note: The only supported values for CPU are '1', '2', '4', '6', and '8'. Setting 4 CPU requires at least 2Gi of memory, setting 6 or more CPU requires at least 4Gi of memory. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  final Map<String, String>? limits;

  /// Creates a new [WorkerPoolTemplateContainerResources].
  /// [limits] Only memory, CPU, and nvidia.com/gpu are supported. Use key `cpu` for CPU limit, `memory` for memory limit, `nvidia.com/gpu` for gpu limit. Note: The only supported values for CPU are '1', '2', '4', '6', and '8'. Setting 4 CPU requires at least 2Gi of memory, setting 6 or more CPU requires at least 4Gi of memory. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  WorkerPoolTemplateContainerResources({
    this.limits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?limits,
    };
  }

  factory WorkerPoolTemplateContainerResources.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerResources(
      limits: map['limits'] == null ? null : (map['limits'] as Map).cast<String, String>(),
    );
  }
}

