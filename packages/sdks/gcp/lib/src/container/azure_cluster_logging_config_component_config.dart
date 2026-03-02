// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureClusterLoggingConfigComponentConfig {
  /// Components of the logging configuration to be enabled.
  final pulumi.Input<List<String>>? enableComponents;

  /// Creates a new [AzureClusterLoggingConfigComponentConfig].
  /// [enableComponents] Components of the logging configuration to be enabled.
  AzureClusterLoggingConfigComponentConfig({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': ?enableComponents,
    };
  }

  factory AzureClusterLoggingConfigComponentConfig.fromMap(Map<String, dynamic> map) {
    return AzureClusterLoggingConfigComponentConfig(
      enableComponents: map['enableComponents'] == null ? null : ((map['enableComponents']! as List).cast<String>()).input(),
    );
  }
}

