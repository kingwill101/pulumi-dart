// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AttachedClusterLoggingConfigComponentConfig {
  /// The components to be enabled.
  /// Each value may be one of: `SYSTEM_COMPONENTS`, `WORKLOADS`.
  final pulumi.Input<List<String>?>? enableComponents;

  /// Creates a new [AttachedClusterLoggingConfigComponentConfig].
  /// [enableComponents] The components to be enabled.
  const AttachedClusterLoggingConfigComponentConfig({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': ?enableComponents,
    };
  }

  factory AttachedClusterLoggingConfigComponentConfig.fromMap(Map<String, dynamic> map) {
    return AttachedClusterLoggingConfigComponentConfig(
      enableComponents: (() { final guardedValue = map['enableComponents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
