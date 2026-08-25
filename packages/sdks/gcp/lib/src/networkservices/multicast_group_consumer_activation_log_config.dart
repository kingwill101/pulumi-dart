// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MulticastGroupConsumerActivationLogConfig {
  /// Whether to enable logging or not.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [MulticastGroupConsumerActivationLogConfig].
  /// [enabled] Whether to enable logging or not.
  const MulticastGroupConsumerActivationLogConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory MulticastGroupConsumerActivationLogConfig.fromMap(Map<String, dynamic> map) {
    return MulticastGroupConsumerActivationLogConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
