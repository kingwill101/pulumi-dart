// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_cluster_logging_config_component_config.dart';

class AzureClusterLoggingConfig {
  /// Configuration of the logging components.
  final pulumi.Input<AzureClusterLoggingConfigComponentConfig>? componentConfig;

  /// Creates a new [AzureClusterLoggingConfig].
  /// [componentConfig] Configuration of the logging components.
  AzureClusterLoggingConfig({
    this.componentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentConfig': ?pulumi.Input.mapOptionalInputValue<AzureClusterLoggingConfigComponentConfig, Map<String, dynamic>>(componentConfig, (value) => value.toMap()),
    };
  }

  factory AzureClusterLoggingConfig.fromMap(Map<String, dynamic> map) {
    return AzureClusterLoggingConfig(
      componentConfig: map['componentConfig'] == null ? null : (AzureClusterLoggingConfigComponentConfig.fromMap((map['componentConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

