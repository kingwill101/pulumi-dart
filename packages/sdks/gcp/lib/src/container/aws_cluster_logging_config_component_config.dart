// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsClusterLoggingConfigComponentConfig {
  /// Components of the logging configuration to be enabled.
  final pulumi.Input<List<String>?>? enableComponents;

  /// Creates a new [AwsClusterLoggingConfigComponentConfig].
  /// [enableComponents] Components of the logging configuration to be enabled.
  const AwsClusterLoggingConfigComponentConfig({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': ?enableComponents,
    };
  }

  factory AwsClusterLoggingConfigComponentConfig.fromMap(Map<String, dynamic> map) {
    return AwsClusterLoggingConfigComponentConfig(
      enableComponents: (() { final guardedValue = map['enableComponents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
