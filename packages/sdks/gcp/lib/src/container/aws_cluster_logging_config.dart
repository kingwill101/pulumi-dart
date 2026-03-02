// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_cluster_logging_config_component_config.dart';

class AwsClusterLoggingConfig {
  /// Configuration of the logging components.
  final pulumi.Input<AwsClusterLoggingConfigComponentConfig>? componentConfig;

  /// Creates a new [AwsClusterLoggingConfig].
  /// [componentConfig] Configuration of the logging components.
  AwsClusterLoggingConfig({
    this.componentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentConfig': ?pulumi.Input.mapOptionalInputValue<AwsClusterLoggingConfigComponentConfig, Map<String, dynamic>>(componentConfig, (value) => value.toMap()),
    };
  }

  factory AwsClusterLoggingConfig.fromMap(Map<String, dynamic> map) {
    return AwsClusterLoggingConfig(
      componentConfig: map['componentConfig'] == null ? null : (AwsClusterLoggingConfigComponentConfig.fromMap((map['componentConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

