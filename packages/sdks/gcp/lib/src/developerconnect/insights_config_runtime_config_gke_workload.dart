// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsConfigRuntimeConfigGkeWorkload {
  /// The name of the GKE cluster.
  /// Format:
  /// `projects/{project}/locations/{location}/clusters/{cluster}`.
  final pulumi.Input<String> cluster;

  /// (Output)
  /// The name of the GKE deployment.
  /// Format:
  /// `projects/{project}/locations/{location}/clusters/{cluster}/namespaces/{namespace}/deployments/{deployment}`.
  final pulumi.Input<String>? deployment;

  /// Creates a new [InsightsConfigRuntimeConfigGkeWorkload].
  /// [cluster] The name of the GKE cluster.
  /// [deployment] (Output)
  InsightsConfigRuntimeConfigGkeWorkload({
    required this.cluster,
    this.deployment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cluster': cluster, 'deployment': ?deployment};
  }

  factory InsightsConfigRuntimeConfigGkeWorkload.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightsConfigRuntimeConfigGkeWorkload(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      deployment: (() {
        final guardedValue = map['deployment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
