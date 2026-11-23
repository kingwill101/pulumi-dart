// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQueryLookerQueryFilter {
  /// Required. The field to filter on.
  final pulumi.Input<String> field;
  /// Optional. The value for the field to filter on.
  final pulumi.Input<String?>? value;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQueryLookerQueryFilter].
  /// [field] Required. The field to filter on.
  /// [value] Optional. The value for the field to filter on.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQueryLookerQueryFilter({
    required this.field,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'value': ?value,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQueryLookerQueryFilter.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQueryLookerQueryFilter(
      field: pulumi.Input.fromValue(map['field'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
