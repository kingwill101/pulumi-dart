// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references_looker_explore_reference_schema_field.dart';
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references_looker_explore_reference_schema_filter.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchema {
  /// Optional. A textual description of the explore's content and purpose.
  final pulumi.Input<String?>? description;
  /// Optional. Explore display name.
  final pulumi.Input<String?>? displayName;
  /// Optional. The fields in the schema.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchemaField>?>? fields;
  /// Optional. The filters on the datasource's underlying data.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchemaFilter>?>? filters;
  /// Optional. A list of alternative names or synonyms that can be used to refer to the explore.
  final pulumi.Input<List<String>?>? synonyms;
  /// Optional. A list of tags or keywords associated with the explore, used for categorization.
  final pulumi.Input<List<String>?>? tags;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchema].
  /// [description] Optional. A textual description of the explore's content and purpose.
  /// [displayName] Optional. Explore display name.
  /// [fields] Optional. The fields in the schema.
  /// [filters] Optional. The filters on the datasource's underlying data.
  /// [synonyms] Optional. A list of alternative names or synonyms that can be used to refer to the explore.
  /// [tags] Optional. A list of tags or keywords associated with the explore, used for categorization.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchema({
    this.description,
    this.displayName,
    this.fields,
    this.filters,
    this.synonyms,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'fields': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchemaField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchemaField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filters': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchemaFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchemaFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'synonyms': ?synonyms,
      'tags': ?tags,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchema.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchema(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchemaField>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchemaField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchemaFilter>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferenceSchemaFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      synonyms: (() { final guardedValue = map['synonyms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
