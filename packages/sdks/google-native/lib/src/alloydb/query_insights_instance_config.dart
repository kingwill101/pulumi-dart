// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// QueryInsights Instance specific configuration.
class QueryInsightsInstanceConfig {
  /// Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 20 is considered valid.
  final pulumi.Input<int>? queryPlansPerMinute;
  /// Query string length. The default value is 1024. Any integer between 256 and 4500 is considered valid.
  final pulumi.Input<int>? queryStringLength;
  /// Record application tags for an instance. This flag is turned "on" by default.
  final pulumi.Input<bool>? recordApplicationTags;
  /// Record client address for an instance. Client address is PII information. This flag is turned "on" by default.
  final pulumi.Input<bool>? recordClientAddress;

  /// Creates a new [QueryInsightsInstanceConfig].
  /// [queryPlansPerMinute] Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 20 is considered valid.
  /// [queryStringLength] Query string length. The default value is 1024. Any integer between 256 and 4500 is considered valid.
  /// [recordApplicationTags] Record application tags for an instance. This flag is turned "on" by default.
  /// [recordClientAddress] Record client address for an instance. Client address is PII information. This flag is turned "on" by default.
  const QueryInsightsInstanceConfig({
    this.queryPlansPerMinute,
    this.queryStringLength,
    this.recordApplicationTags,
    this.recordClientAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryPlansPerMinute': ?queryPlansPerMinute,
      'queryStringLength': ?queryStringLength,
      'recordApplicationTags': ?recordApplicationTags,
      'recordClientAddress': ?recordClientAddress,
    };
  }

  factory QueryInsightsInstanceConfig.fromMap(Map<String, dynamic> map) {
    return QueryInsightsInstanceConfig(
      queryPlansPerMinute: (() { final guardedValue = map['queryPlansPerMinute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      queryStringLength: (() { final guardedValue = map['queryStringLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      recordApplicationTags: (() { final guardedValue = map['recordApplicationTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recordClientAddress: (() { final guardedValue = map['recordClientAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

