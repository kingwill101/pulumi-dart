// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceAccessLoggingConfig {
  /// Boolean flag that specifies whether the customer access log feature is enabled.
  final pulumi.Input<bool> enabled;
  /// Ship the access log entries that match the statusCode defined in the filter.
  /// The statusCode is the only expected/supported filter field. (Ex: statusCode)
  /// The filter will parse it to the Common Expression Language semantics for expression
  /// evaluation to build the filter condition. (Ex: "filter": statusCode >= 200 && statusCode < 300 )
  final pulumi.Input<String>? filter;

  /// Creates a new [InstanceAccessLoggingConfig].
  /// [enabled] Boolean flag that specifies whether the customer access log feature is enabled.
  /// [filter] Ship the access log entries that match the statusCode defined in the filter.
  InstanceAccessLoggingConfig({
    required this.enabled,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'filter': ?filter,
    };
  }

  factory InstanceAccessLoggingConfig.fromMap(Map<String, dynamic> map) {
    return InstanceAccessLoggingConfig(
      enabled: (map['enabled'] as bool).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
    );
  }
}

