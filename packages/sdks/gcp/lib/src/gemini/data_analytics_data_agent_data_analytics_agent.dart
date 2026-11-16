// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_last_published_context.dart';
import 'data_analytics_data_agent_data_analytics_agent_published_context.dart';
import 'data_analytics_data_agent_data_analytics_agent_staging_context.dart';

class DataAnalyticsDataAgentDataAnalyticsAgent {
  /// (Output)
  /// Output only. The last published context for the agent.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContext>?>? lastPublishedContexts;
  /// Optional. The published context for the agent. This context is used by
  /// the Chat API in production.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContext?>? publishedContext;
  /// Optional. The staging context for the agent. This context is used to
  /// test and validate changes before publishing.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContext?>? stagingContext;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgent].
  /// [lastPublishedContexts] (Output)
  /// [publishedContext] Optional. The published context for the agent. This context is used by
  /// [stagingContext] Optional. The staging context for the agent. This context is used to
  const DataAnalyticsDataAgentDataAnalyticsAgent({
    this.lastPublishedContexts,
    this.publishedContext,
    this.stagingContext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastPublishedContexts': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContext>, List<Map<String, dynamic>>>(lastPublishedContexts, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContext, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publishedContext': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContext, Map<String, dynamic>>(publishedContext, (value) => value.toMap()),
      'stagingContext': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContext, Map<String, dynamic>>(stagingContext, (value) => value.toMap()),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgent.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgent(
      lastPublishedContexts: (() { final guardedValue = map['lastPublishedContexts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContext>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContext.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publishedContext: (() { final guardedValue = map['publishedContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stagingContext: (() { final guardedValue = map['stagingContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
