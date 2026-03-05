// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Kubernetes Dashboard.
class KubernetesDashboardContainerV1beta1 {
  /// Whether the Kubernetes Dashboard is enabled for this cluster.
  final pulumi.Input<bool>? disabled;

  /// Creates a new [KubernetesDashboardContainerV1beta1].
  /// [disabled] Whether the Kubernetes Dashboard is enabled for this cluster.
  KubernetesDashboardContainerV1beta1({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
    };
  }

  factory KubernetesDashboardContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return KubernetesDashboardContainerV1beta1(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

