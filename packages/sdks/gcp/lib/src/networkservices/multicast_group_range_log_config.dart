// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MulticastGroupRangeLogConfig {
  /// Whether to enable logging or not.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [MulticastGroupRangeLogConfig].
  /// [enabled] Whether to enable logging or not.
  MulticastGroupRangeLogConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory MulticastGroupRangeLogConfig.fromMap(Map<String, dynamic> map) {
    return MulticastGroupRangeLogConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

