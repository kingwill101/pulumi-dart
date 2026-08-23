// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Insights configuration. This specifies when Cloud SQL Insights feature is enabled and optional configuration.
class InsightsConfigResponse {
  /// Whether Query Insights feature is enabled.
  final pulumi.Input<bool> queryInsightsEnabled;
  /// Number of query execution plans captured by Insights per minute for all queries combined. Default is 5.
  final pulumi.Input<int> queryPlansPerMinute;
  /// Maximum query length stored in bytes. Default value: 1024 bytes. Range: 256-4500 bytes. Query length more than this field value will be truncated to this value. When unset, query length will be the default value. Changing query length will restart the database.
  final pulumi.Input<int> queryStringLength;
  /// Whether Query Insights will record application tags from query when enabled.
  final pulumi.Input<bool> recordApplicationTags;
  /// Whether Query Insights will record client address when enabled.
  final pulumi.Input<bool> recordClientAddress;

  /// Creates a new [InsightsConfigResponse].
  /// [queryInsightsEnabled] Whether Query Insights feature is enabled.
  /// [queryPlansPerMinute] Number of query execution plans captured by Insights per minute for all queries combined. Default is 5.
  /// [queryStringLength] Maximum query length stored in bytes. Default value: 1024 bytes. Range: 256-4500 bytes. Query length more than this field value will be truncated to this value. When unset, query length will be the default value. Changing query length will restart the database.
  /// [recordApplicationTags] Whether Query Insights will record application tags from query when enabled.
  /// [recordClientAddress] Whether Query Insights will record client address when enabled.
  const InsightsConfigResponse({
    required this.queryInsightsEnabled,
    required this.queryPlansPerMinute,
    required this.queryStringLength,
    required this.recordApplicationTags,
    required this.recordClientAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryInsightsEnabled': queryInsightsEnabled,
      'queryPlansPerMinute': queryPlansPerMinute,
      'queryStringLength': queryStringLength,
      'recordApplicationTags': recordApplicationTags,
      'recordClientAddress': recordClientAddress,
    };
  }

  factory InsightsConfigResponse.fromMap(Map<String, dynamic> map) {
    return InsightsConfigResponse(
      queryInsightsEnabled: pulumi.Input.fromValue(map['queryInsightsEnabled'] as bool),
      queryPlansPerMinute: pulumi.Input.fromValue(map['queryPlansPerMinute'] as int),
      queryStringLength: pulumi.Input.fromValue(map['queryStringLength'] as int),
      recordApplicationTags: pulumi.Input.fromValue(map['recordApplicationTags'] as bool),
      recordClientAddress: pulumi.Input.fromValue(map['recordClientAddress'] as bool),
    );
  }
}
