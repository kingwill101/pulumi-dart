// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReferenceSchemaFilter {
  /// Required. The field to filter on.
  final pulumi.Input<String?>? field;
  /// Optional. The type of filter present on a datasource, such as ALWAYS_FILTER.
  final pulumi.Input<String?>? type;
  /// Optional. The value for the field to filter on.
  final pulumi.Input<String?>? value;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReferenceSchemaFilter].
  /// [field] Required. The field to filter on.
  /// [type] Optional. The type of filter present on a datasource, such as ALWAYS_FILTER.
  /// [value] Optional. The value for the field to filter on.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReferenceSchemaFilter({
    this.field,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'type': ?type,
      'value': ?value,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReferenceSchemaFilter.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReferenceSchemaFilter(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
