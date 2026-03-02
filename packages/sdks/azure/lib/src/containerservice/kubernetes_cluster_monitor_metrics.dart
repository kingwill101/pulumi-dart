// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterMonitorMetrics {
  /// Specifies a comma-separated list of Kubernetes annotation keys that will be used in the resource's labels metric.
  final pulumi.Input<String>? annotationsAllowed;
  /// Specifies a Comma-separated list of additional Kubernetes label keys that will be used in the resource's labels metric.
  ///
  /// > **Note:** Both properties `annotations_allowed` and `labels_allowed` are required if you are enabling Managed Prometheus with an existing Azure Monitor Workspace.
  final pulumi.Input<String>? labelsAllowed;

  /// Creates a new [KubernetesClusterMonitorMetrics].
  /// [annotationsAllowed] Specifies a comma-separated list of Kubernetes annotation keys that will be used in the resource's labels metric.
  /// [labelsAllowed] Specifies a Comma-separated list of additional Kubernetes label keys that will be used in the resource's labels metric.
  KubernetesClusterMonitorMetrics({
    this.annotationsAllowed,
    this.labelsAllowed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationsAllowed': ?annotationsAllowed,
      'labelsAllowed': ?labelsAllowed,
    };
  }

  factory KubernetesClusterMonitorMetrics.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterMonitorMetrics(
      annotationsAllowed: map['annotationsAllowed'] == null ? null : (map['annotationsAllowed'] as String).input(),
      labelsAllowed: map['labelsAllowed'] == null ? null : (map['labelsAllowed'] as String).input(),
    );
  }
}

