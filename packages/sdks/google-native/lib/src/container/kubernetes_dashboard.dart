// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Kubernetes Dashboard.
class KubernetesDashboard {
  /// Whether the Kubernetes Dashboard is enabled for this cluster.
  final pulumi.Input<bool>? disabled;

  /// Creates a new [KubernetesDashboard].
  /// [disabled] Whether the Kubernetes Dashboard is enabled for this cluster.
  KubernetesDashboard({this.disabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disabled': ?disabled};
  }

  factory KubernetesDashboard.fromMap(Map<String, dynamic> map) {
    return KubernetesDashboard(
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
