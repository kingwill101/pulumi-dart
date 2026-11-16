// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterManagedOpentelemetryConfig {
  /// The scope of the Managed OpenTelemetry pipeline. Available options include:
  /// * `COLLECTION_AND_INSTRUMENTATION_COMPONENTS`: Enables the Managed OpenTelemetry pipeline for collection and instrumentation components.
  /// * `NONE`: Disables the Managed OpenTelemetry pipeline.
  ///
  /// See the [GKE Managed OpenTelemetry documentation](https://docs.cloud.google.com/kubernetes-engine/docs/concepts/managed-otel-gke) and [ManagedOpenTelemetryConfig REST API reference](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#managedopentelemetryconfig) for additional details.
  ///
  /// &gt; **Note:** Removing the `managedOpentelemetryConfig` block or omitting `scope` from your configuration stops Terraform from managing this setting, but does **not** disable the pipeline on the cluster. To disable the feature, keep the block and explicitly set `scope = "NONE"`.
  final pulumi.Input<String?>? scope;

  /// Creates a new [ClusterManagedOpentelemetryConfig].
  /// [scope] The scope of the Managed OpenTelemetry pipeline. Available options include:
  const ClusterManagedOpentelemetryConfig({
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
    };
  }

  factory ClusterManagedOpentelemetryConfig.fromMap(Map<String, dynamic> map) {
    return ClusterManagedOpentelemetryConfig(
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
