// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterManagedOpentelemetryConfig {
  /// The scope of the Managed OpenTelemetry pipeline. Available options include SCOPE_UNSPECIFIED, NONE, and COLLECTION_AND_INSTRUMENTATION_COMPONENTS.
  final pulumi.Input<String> scope;

  /// Creates a new [GetClusterManagedOpentelemetryConfig].
  /// [scope] The scope of the Managed OpenTelemetry pipeline. Available options include SCOPE_UNSPECIFIED, NONE, and COLLECTION_AND_INSTRUMENTATION_COMPONENTS.
  GetClusterManagedOpentelemetryConfig({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
    };
  }

  factory GetClusterManagedOpentelemetryConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterManagedOpentelemetryConfig(
      scope: (map['scope'] as String).input(),
    );
  }
}

