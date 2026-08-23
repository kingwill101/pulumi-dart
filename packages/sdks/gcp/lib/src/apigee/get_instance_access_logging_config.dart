// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceAccessLoggingConfig {
  /// Boolean flag that specifies whether the customer access log feature is enabled.
  final pulumi.Input<bool> enabled;
  /// Ship the access log entries that match the statusCode defined in the filter.
  /// The statusCode is the only expected/supported filter field. (Ex: statusCode)
  /// The filter will parse it to the Common Expression Language semantics for expression
  /// evaluation to build the filter condition. (Ex: "filter": statusCode &gt;= 200 && statusCode &lt; 300 )
  final pulumi.Input<String> filter;

  /// Creates a new [GetInstanceAccessLoggingConfig].
  /// [enabled] Boolean flag that specifies whether the customer access log feature is enabled.
  /// [filter] Ship the access log entries that match the statusCode defined in the filter.
  const GetInstanceAccessLoggingConfig({
    required this.enabled,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'filter': filter,
    };
  }

  factory GetInstanceAccessLoggingConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceAccessLoggingConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      filter: pulumi.Input.fromValue(map['filter'] as String),
    );
  }
}
