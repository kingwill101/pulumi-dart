// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterManagedOpentelemetryConfig {
  /// The scope of the Managed OpenTelemetry pipeline. Supported values include: `SCOPE_UNSPECIFIED`, `NONE`, `COLLECTION_AND_INSTRUMENTATION_COMPONENTS`.
  final pulumi.Input<String?>? scope;

  /// Creates a new [ClusterManagedOpentelemetryConfig].
  /// [scope] The scope of the Managed OpenTelemetry pipeline. Supported values include: `SCOPE_UNSPECIFIED`, `NONE`, `COLLECTION_AND_INSTRUMENTATION_COMPONENTS`.
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
