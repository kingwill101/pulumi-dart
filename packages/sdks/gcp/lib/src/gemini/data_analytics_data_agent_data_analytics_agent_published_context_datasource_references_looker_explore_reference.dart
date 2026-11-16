// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_datasource_references_looker_explore_reference_private_looker_instance_info.dart';
import 'data_analytics_data_agent_data_analytics_agent_published_context_datasource_references_looker_explore_reference_schema.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReference {
  /// Required. Name of the LookML Explore.
  final pulumi.Input<String> explore;
  /// Optional. The base URL of the Looker instance.
  final pulumi.Input<String?>? lookerInstanceUri;
  /// Required. Name of the LookML model.
  final pulumi.Input<String> lookmlModel;
  /// Optional. Private Looker instance info if the Looker instance is behind a private network.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReferencePrivateLookerInstanceInfo?>? privateLookerInstanceInfo;
  /// Optional. The schema of the datasource.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReferenceSchema?>? schema;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReference].
  /// [explore] Required. Name of the LookML Explore.
  /// [lookerInstanceUri] Optional. The base URL of the Looker instance.
  /// [lookmlModel] Required. Name of the LookML model.
  /// [privateLookerInstanceInfo] Optional. Private Looker instance info if the Looker instance is behind a private network.
  /// [schema] Optional. The schema of the datasource.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReference({
    required this.explore,
    this.lookerInstanceUri,
    required this.lookmlModel,
    this.privateLookerInstanceInfo,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'explore': explore,
      'lookerInstanceUri': ?lookerInstanceUri,
      'lookmlModel': lookmlModel,
      'privateLookerInstanceInfo': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReferencePrivateLookerInstanceInfo, Map<String, dynamic>>(privateLookerInstanceInfo, (value) => value.toMap()),
      'schema': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReferenceSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReference.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReference(
      explore: pulumi.Input.fromValue(map['explore'] as String),
      lookerInstanceUri: (() { final guardedValue = map['lookerInstanceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lookmlModel: pulumi.Input.fromValue(map['lookmlModel'] as String),
      privateLookerInstanceInfo: (() { final guardedValue = map['privateLookerInstanceInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReferencePrivateLookerInstanceInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReferenceSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
