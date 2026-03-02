// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Kubernetes Dashboard.
class KubernetesDashboardResponseContainerV1beta1 {
  /// Whether the Kubernetes Dashboard is enabled for this cluster.
  final pulumi.Input<bool> disabled;

  /// Creates a new [KubernetesDashboardResponseContainerV1beta1].
  /// [disabled] Whether the Kubernetes Dashboard is enabled for this cluster.
  KubernetesDashboardResponseContainerV1beta1({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory KubernetesDashboardResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return KubernetesDashboardResponseContainerV1beta1(
      disabled: (map['disabled'] as bool).input(),
    );
  }
}

