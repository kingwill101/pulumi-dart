// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_cluster_logging_config_component_config.dart';

class AttachedClusterLoggingConfig {
  /// The configuration of the logging components
  /// Structure is documented below.
  final pulumi.Input<AttachedClusterLoggingConfigComponentConfig?>? componentConfig;

  /// Creates a new [AttachedClusterLoggingConfig].
  /// [componentConfig] The configuration of the logging components
  const AttachedClusterLoggingConfig({
    this.componentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentConfig': ?pulumi.Input.mapOptionalInputValue<AttachedClusterLoggingConfigComponentConfig, Map<String, dynamic>>(componentConfig, (value) => value.toMap()),
    };
  }

  factory AttachedClusterLoggingConfig.fromMap(Map<String, dynamic> map) {
    return AttachedClusterLoggingConfig(
      componentConfig: (() { final guardedValue = map['componentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedClusterLoggingConfigComponentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
