// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Kubernetes Dashboard.
class KubernetesDashboardResponse {
  /// Whether the Kubernetes Dashboard is enabled for this cluster.
  final pulumi.Input<bool> disabled;

  /// Creates a new [KubernetesDashboardResponse].
  /// [disabled] Whether the Kubernetes Dashboard is enabled for this cluster.
  const KubernetesDashboardResponse({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory KubernetesDashboardResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesDashboardResponse(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
