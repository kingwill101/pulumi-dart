// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// QueryInsights Instance specific configuration.
class QueryInsightsInstanceConfigResponse {
  /// Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 20 is considered valid.
  final pulumi.Input<int> queryPlansPerMinute;
  /// Query string length. The default value is 1024. Any integer between 256 and 4500 is considered valid.
  final pulumi.Input<int> queryStringLength;
  /// Record application tags for an instance. This flag is turned "on" by default.
  final pulumi.Input<bool> recordApplicationTags;
  /// Record client address for an instance. Client address is PII information. This flag is turned "on" by default.
  final pulumi.Input<bool> recordClientAddress;

  /// Creates a new [QueryInsightsInstanceConfigResponse].
  /// [queryPlansPerMinute] Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 20 is considered valid.
  /// [queryStringLength] Query string length. The default value is 1024. Any integer between 256 and 4500 is considered valid.
  /// [recordApplicationTags] Record application tags for an instance. This flag is turned "on" by default.
  /// [recordClientAddress] Record client address for an instance. Client address is PII information. This flag is turned "on" by default.
  QueryInsightsInstanceConfigResponse({
    required this.queryPlansPerMinute,
    required this.queryStringLength,
    required this.recordApplicationTags,
    required this.recordClientAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryPlansPerMinute': queryPlansPerMinute,
      'queryStringLength': queryStringLength,
      'recordApplicationTags': recordApplicationTags,
      'recordClientAddress': recordClientAddress,
    };
  }

  factory QueryInsightsInstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return QueryInsightsInstanceConfigResponse(
      queryPlansPerMinute: (map['queryPlansPerMinute'] as int).input(),
      queryStringLength: (map['queryStringLength'] as int).input(),
      recordApplicationTags: (map['recordApplicationTags'] as bool).input(),
      recordClientAddress: (map['recordClientAddress'] as bool).input(),
    );
  }
}

