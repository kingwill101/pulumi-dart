// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceSettingInsightsConfig {
  /// True if Enhanced Query Insights feature is enabled.
  final pulumi.Input<bool> enhancedQueryInsightsEnabled;
  /// True if Query Insights feature is enabled.
  final pulumi.Input<bool> queryInsightsEnabled;
  /// Number of query execution plans captured by Insights per minute for all queries combined. Between 0 and 20. Default to 5. For Enterprise Plus instances, from 0 to 200.
  final pulumi.Input<int> queryPlansPerMinute;
  /// Maximum query length stored in bytes. Between 256 and 4500. Default to 1024. For Enterprise Plus instances, from 1024 to 100000.
  final pulumi.Input<int> queryStringLength;
  /// True if Query Insights will record application tags from query when enabled.
  final pulumi.Input<bool> recordApplicationTags;
  /// True if Query Insights will record client address when enabled.
  final pulumi.Input<bool> recordClientAddress;

  /// Creates a new [GetDatabaseInstanceSettingInsightsConfig].
  /// [enhancedQueryInsightsEnabled] True if Enhanced Query Insights feature is enabled.
  /// [queryInsightsEnabled] True if Query Insights feature is enabled.
  /// [queryPlansPerMinute] Number of query execution plans captured by Insights per minute for all queries combined. Between 0 and 20. Default to 5. For Enterprise Plus instances, from 0 to 200.
  /// [queryStringLength] Maximum query length stored in bytes. Between 256 and 4500. Default to 1024. For Enterprise Plus instances, from 1024 to 100000.
  /// [recordApplicationTags] True if Query Insights will record application tags from query when enabled.
  /// [recordClientAddress] True if Query Insights will record client address when enabled.
  const GetDatabaseInstanceSettingInsightsConfig({
    required this.enhancedQueryInsightsEnabled,
    required this.queryInsightsEnabled,
    required this.queryPlansPerMinute,
    required this.queryStringLength,
    required this.recordApplicationTags,
    required this.recordClientAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enhancedQueryInsightsEnabled': enhancedQueryInsightsEnabled,
      'queryInsightsEnabled': queryInsightsEnabled,
      'queryPlansPerMinute': queryPlansPerMinute,
      'queryStringLength': queryStringLength,
      'recordApplicationTags': recordApplicationTags,
      'recordClientAddress': recordClientAddress,
    };
  }

  factory GetDatabaseInstanceSettingInsightsConfig.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingInsightsConfig(
      enhancedQueryInsightsEnabled: pulumi.Input.fromValue(map['enhancedQueryInsightsEnabled'] as bool),
      queryInsightsEnabled: pulumi.Input.fromValue(map['queryInsightsEnabled'] as bool),
      queryPlansPerMinute: pulumi.Input.fromValue((map['queryPlansPerMinute'] as num).toInt()),
      queryStringLength: pulumi.Input.fromValue((map['queryStringLength'] as num).toInt()),
      recordApplicationTags: pulumi.Input.fromValue(map['recordApplicationTags'] as bool),
      recordClientAddress: pulumi.Input.fromValue(map['recordClientAddress'] as bool),
    );
  }
}
