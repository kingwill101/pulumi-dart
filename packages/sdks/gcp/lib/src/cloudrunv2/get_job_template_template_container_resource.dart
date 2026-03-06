// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobTemplateTemplateContainerResource {
  /// Only memory, CPU, and nvidia.com/gpu are supported. Use key 'cpu' for CPU limit, 'memory' for memory limit, 'nvidia.com/gpu' for gpu limit. Note: The only supported values for CPU are '1', '2', '4', '6', and '8'. Setting 4 CPU requires at least 2Gi of memory, setting 6 or more CPU requires at least 4Gi of memory. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  final pulumi.Input<Map<String, String>> limits;

  /// Creates a new [GetJobTemplateTemplateContainerResource].
  /// [limits] Only memory, CPU, and nvidia.com/gpu are supported. Use key 'cpu' for CPU limit, 'memory' for memory limit, 'nvidia.com/gpu' for gpu limit. Note: The only supported values for CPU are '1', '2', '4', '6', and '8'. Setting 4 CPU requires at least 2Gi of memory, setting 6 or more CPU requires at least 4Gi of memory. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  const GetJobTemplateTemplateContainerResource({
    required this.limits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': limits,
    };
  }

  factory GetJobTemplateTemplateContainerResource.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateContainerResource(
      limits: pulumi.Input.fromValue((map['limits'] as Map).cast<String, String>()),
    );
  }
}

