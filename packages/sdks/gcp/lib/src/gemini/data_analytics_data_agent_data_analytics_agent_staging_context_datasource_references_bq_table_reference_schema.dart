// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references_bq_table_reference_schema_field.dart';
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references_bq_table_reference_schema_filter.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchema {
  /// Optional. A textual description of the explore's content and purpose.
  final pulumi.Input<String?>? description;
  /// Optional. Explore display name.
  final pulumi.Input<String?>? displayName;
  /// Optional. The fields in the schema.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchemaField>?>? fields;
  /// Optional. The filters on the datasource's underlying data.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchemaFilter>?>? filters;
  /// Optional. A list of alternative names or synonyms that can be used to refer to the explore.
  final pulumi.Input<List<String>?>? synonyms;
  /// Optional. A list of tags or keywords associated with the explore, used for categorization.
  final pulumi.Input<List<String>?>? tags;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchema].
  /// [description] Optional. A textual description of the explore's content and purpose.
  /// [displayName] Optional. Explore display name.
  /// [fields] Optional. The fields in the schema.
  /// [filters] Optional. The filters on the datasource's underlying data.
  /// [synonyms] Optional. A list of alternative names or synonyms that can be used to refer to the explore.
  /// [tags] Optional. A list of tags or keywords associated with the explore, used for categorization.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchema({
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
      'fields': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchemaField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchemaField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filters': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchemaFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchemaFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'synonyms': ?synonyms,
      'tags': ?tags,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchema.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchema(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchemaField>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchemaField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchemaFilter>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchemaFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      synonyms: (() { final guardedValue = map['synonyms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
