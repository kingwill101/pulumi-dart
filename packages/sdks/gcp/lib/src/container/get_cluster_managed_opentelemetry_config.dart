// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterManagedOpentelemetryConfig {
  /// The scope of the Managed OpenTelemetry pipeline. Available options include NONE and COLLECTION_AND_INSTRUMENTATION_COMPONENTS. See https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#managedopentelemetryconfig for more information. To disable the feature, explicitly set this to NONE.
  final pulumi.Input<String> scope;

  /// Creates a new [GetClusterManagedOpentelemetryConfig].
  /// [scope] The scope of the Managed OpenTelemetry pipeline. Available options include NONE and COLLECTION_AND_INSTRUMENTATION_COMPONENTS. See https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#managedopentelemetryconfig for more information. To disable the feature, explicitly set this to NONE.
  const GetClusterManagedOpentelemetryConfig({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
    };
  }

  factory GetClusterManagedOpentelemetryConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterManagedOpentelemetryConfig(
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
