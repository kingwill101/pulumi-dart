// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auto-pausing properties of a Big Data pool powered by Apache Spark
class AutoPausePropertiesResponse {
  /// Number of minutes of idle time before the Big Data pool is automatically paused.
  final pulumi.Input<int>? delayInMinutes;
  /// Whether auto-pausing is enabled for the Big Data pool.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AutoPausePropertiesResponse].
  /// [delayInMinutes] Number of minutes of idle time before the Big Data pool is automatically paused.
  /// [enabled] Whether auto-pausing is enabled for the Big Data pool.
  const AutoPausePropertiesResponse({
    this.delayInMinutes,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayInMinutes': ?delayInMinutes,
      'enabled': ?enabled,
    };
  }

  factory AutoPausePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AutoPausePropertiesResponse(
      delayInMinutes: (() { final guardedValue = map['delayInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

