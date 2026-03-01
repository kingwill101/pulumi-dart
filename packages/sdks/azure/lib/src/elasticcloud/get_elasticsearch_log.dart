// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elasticsearch_log_filtering_tag.dart';

class GetElasticsearchLog {
  /// A list of `filtering_tag` blocks as defined above.
  final List<GetElasticsearchLogFilteringTag> filteringTags;
  /// Should the Azure Activity Logs should be sent to the Elasticsearch cluster?
  final bool sendActivityLogs;
  /// Should the AzureAD Logs should be sent to the Elasticsearch cluster?
  final bool sendAzureadLogs;
  /// Should the Azure Subscription Logs should be sent to the Elasticsearch cluster?
  final bool sendSubscriptionLogs;

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
      'filteringTags': pulumi.Input.encodeList<GetElasticsearchLogFilteringTag, Map<String, dynamic>>(filteringTags, (value) => value.toMap()),
      'sendActivityLogs': sendActivityLogs,
      'sendAzureadLogs': sendAzureadLogs,
      'sendSubscriptionLogs': sendSubscriptionLogs,
    };
  }

  factory GetElasticsearchLog.fromMap(Map<String, dynamic> map) {
    return GetElasticsearchLog(
      filteringTags: pulumi.Input.decodeList<GetElasticsearchLogFilteringTag>(map['filteringTags'], (value) => GetElasticsearchLogFilteringTag.fromMap((value as Map).cast<String, dynamic>())),
      sendActivityLogs: map['sendActivityLogs'] as bool,
      sendAzureadLogs: map['sendAzureadLogs'] as bool,
      sendSubscriptionLogs: map['sendSubscriptionLogs'] as bool,
    );
  }
}

