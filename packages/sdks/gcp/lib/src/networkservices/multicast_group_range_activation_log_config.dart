// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MulticastGroupRangeActivationLogConfig {
  /// Whether to enable logging or not.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [MulticastGroupRangeActivationLogConfig].
  /// [enabled] Whether to enable logging or not.
  MulticastGroupRangeActivationLogConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory MulticastGroupRangeActivationLogConfig.fromMap(Map<String, dynamic> map) {
    return MulticastGroupRangeActivationLogConfig(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

