// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterInsights {
  /// Boolean flag indicating whether the cluster's logs are sent to Insights. Setting this to `false` records an explicit opt-out. If not specified, the API does not record an opt-in and defaults to `false`.
  final pulumi.Input<bool?>? logs;

  /// Creates a new [KubernetesClusterInsights].
  /// [logs] Boolean flag indicating whether the cluster's logs are sent to Insights. Setting this to `false` records an explicit opt-out. If not specified, the API does not record an opt-in and defaults to `false`.
  const KubernetesClusterInsights({
    this.logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': ?logs,
    };
  }

  factory KubernetesClusterInsights.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterInsights(
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
