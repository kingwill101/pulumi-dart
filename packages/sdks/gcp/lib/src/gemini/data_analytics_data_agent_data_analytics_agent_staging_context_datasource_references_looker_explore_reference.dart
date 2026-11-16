// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references_looker_explore_reference_private_looker_instance_info.dart';
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references_looker_explore_reference_schema.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReference {
  /// Required. Name of the LookML Explore.
  final pulumi.Input<String> explore;
  /// Optional. The base URL of the Looker instance.
  final pulumi.Input<String?>? lookerInstanceUri;
  /// Required. Name of the LookML model.
  final pulumi.Input<String> lookmlModel;
  /// Optional. Private Looker instance info if the Looker instance is behind a private network.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferencePrivateLookerInstanceInfo?>? privateLookerInstanceInfo;
  /// Optional. The schema of the datasource.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchema?>? schema;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReference].
  /// [explore] Required. Name of the LookML Explore.
  /// [lookerInstanceUri] Optional. The base URL of the Looker instance.
  /// [lookmlModel] Required. Name of the LookML model.
  /// [privateLookerInstanceInfo] Optional. Private Looker instance info if the Looker instance is behind a private network.
  /// [schema] Optional. The schema of the datasource.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReference({
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
      'privateLookerInstanceInfo': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferencePrivateLookerInstanceInfo, Map<String, dynamic>>(privateLookerInstanceInfo, (value) => value.toMap()),
      'schema': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReference.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReference(
      explore: pulumi.Input.fromValue(map['explore'] as String),
      lookerInstanceUri: (() { final guardedValue = map['lookerInstanceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lookmlModel: pulumi.Input.fromValue(map['lookmlModel'] as String),
      privateLookerInstanceInfo: (() { final guardedValue = map['privateLookerInstanceInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferencePrivateLookerInstanceInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
