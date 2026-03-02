// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elasticsearch_logs_filtering_tag.dart';

class ElasticsearchLogs {
  /// A list of `filtering_tag` blocks as defined above.
  final pulumi.Input<List<ElasticsearchLogsFilteringTag>>? filteringTags;
  /// Specifies if the Azure Activity Logs should be sent to the Elasticsearch cluster. Defaults to `false`.
  final pulumi.Input<bool>? sendActivityLogs;
  /// Specifies if the AzureAD Logs should be sent to the Elasticsearch cluster. Defaults to `false`.
  final pulumi.Input<bool>? sendAzureadLogs;
  /// Specifies if the Azure Subscription Logs should be sent to the Elasticsearch cluster. Defaults to `false`.
  final pulumi.Input<bool>? sendSubscriptionLogs;

  /// Creates a new [ElasticsearchLogs].
  /// [filteringTags] A list of `filtering_tag` blocks as defined above.
  /// [sendActivityLogs] Specifies if the Azure Activity Logs should be sent to the Elasticsearch cluster. Defaults to `false`.
  /// [sendAzureadLogs] Specifies if the AzureAD Logs should be sent to the Elasticsearch cluster. Defaults to `false`.
  /// [sendSubscriptionLogs] Specifies if the Azure Subscription Logs should be sent to the Elasticsearch cluster. Defaults to `false`.
  ElasticsearchLogs({
    this.filteringTags,
    this.sendActivityLogs,
    this.sendAzureadLogs,
    this.sendSubscriptionLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filteringTags': ?pulumi.Input.mapOptionalInputValue<List<ElasticsearchLogsFilteringTag>, List<Map<String, dynamic>>>(filteringTags, (value) => pulumi.Input.encodeList<ElasticsearchLogsFilteringTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sendActivityLogs': ?sendActivityLogs,
      'sendAzureadLogs': ?sendAzureadLogs,
      'sendSubscriptionLogs': ?sendSubscriptionLogs,
    };
  }

  factory ElasticsearchLogs.fromMap(Map<String, dynamic> map) {
    return ElasticsearchLogs(
      filteringTags: map['filteringTags'] == null ? null : (pulumi.Input.decodeList<ElasticsearchLogsFilteringTag>(map['filteringTags'], (value) => ElasticsearchLogsFilteringTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sendActivityLogs: map['sendActivityLogs'] == null ? null : (map['sendActivityLogs'] as bool).input(),
      sendAzureadLogs: map['sendAzureadLogs'] == null ? null : (map['sendAzureadLogs'] as bool).input(),
      sendSubscriptionLogs: map['sendSubscriptionLogs'] == null ? null : (map['sendSubscriptionLogs'] as bool).input(),
    );
  }
}

