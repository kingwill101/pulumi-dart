// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elasticsearch_log_filtering_tag.dart';

class GetElasticsearchLog {
  /// A list of `filtering_tag` blocks as defined above.
  final pulumi.Input<List<GetElasticsearchLogFilteringTag>> filteringTags;
  /// Should the Azure Activity Logs should be sent to the Elasticsearch cluster?
  final pulumi.Input<bool> sendActivityLogs;
  /// Should the AzureAD Logs should be sent to the Elasticsearch cluster?
  final pulumi.Input<bool> sendAzureadLogs;
  /// Should the Azure Subscription Logs should be sent to the Elasticsearch cluster?
  final pulumi.Input<bool> sendSubscriptionLogs;

  /// Creates a new [GetElasticsearchLog].
  /// [filteringTags] A list of `filtering_tag` blocks as defined above.
  /// [sendActivityLogs] Should the Azure Activity Logs should be sent to the Elasticsearch cluster?
  /// [sendAzureadLogs] Should the AzureAD Logs should be sent to the Elasticsearch cluster?
  /// [sendSubscriptionLogs] Should the Azure Subscription Logs should be sent to the Elasticsearch cluster?
  GetElasticsearchLog({
    required this.filteringTags,
    required this.sendActivityLogs,
    required this.sendAzureadLogs,
    required this.sendSubscriptionLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filteringTags': pulumi.Input.mapInputValue<List<GetElasticsearchLogFilteringTag>, List<Map<String, dynamic>>>(filteringTags, (value) => pulumi.Input.encodeList<GetElasticsearchLogFilteringTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sendActivityLogs': sendActivityLogs,
      'sendAzureadLogs': sendAzureadLogs,
      'sendSubscriptionLogs': sendSubscriptionLogs,
    };
  }

  factory GetElasticsearchLog.fromMap(Map<String, dynamic> map) {
    return GetElasticsearchLog(
      filteringTags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetElasticsearchLogFilteringTag>(map['filteringTags']!, (value) => GetElasticsearchLogFilteringTag.fromMap((value as Map).cast<String, dynamic>()))),
      sendActivityLogs: pulumi.Input.fromValue(map['sendActivityLogs'] as bool),
      sendAzureadLogs: pulumi.Input.fromValue(map['sendAzureadLogs'] as bool),
      sendSubscriptionLogs: pulumi.Input.fromValue(map['sendSubscriptionLogs'] as bool),
    );
  }
}

