// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigMonitoringRequestLogging {
  /// Whether logging is enabled for this project or not.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ConfigMonitoringRequestLogging].
  /// [enabled] Whether logging is enabled for this project or not.
  ConfigMonitoringRequestLogging({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ConfigMonitoringRequestLogging.fromMap(Map<String, dynamic> map) {
    return ConfigMonitoringRequestLogging(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

