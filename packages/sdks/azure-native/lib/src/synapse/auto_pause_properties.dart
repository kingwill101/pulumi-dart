// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auto-pausing properties of a Big Data pool powered by Apache Spark
class AutoPauseProperties {
  /// Number of minutes of idle time before the Big Data pool is automatically paused.
  final pulumi.Input<int>? delayInMinutes;
  /// Whether auto-pausing is enabled for the Big Data pool.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AutoPauseProperties].
  /// [delayInMinutes] Number of minutes of idle time before the Big Data pool is automatically paused.
  /// [enabled] Whether auto-pausing is enabled for the Big Data pool.
  AutoPauseProperties({
    this.delayInMinutes,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayInMinutes': ?delayInMinutes,
      'enabled': ?enabled,
    };
  }

  factory AutoPauseProperties.fromMap(Map<String, dynamic> map) {
    return AutoPauseProperties(
      delayInMinutes: map['delayInMinutes'] == null ? null : (map['delayInMinutes']! as int).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

