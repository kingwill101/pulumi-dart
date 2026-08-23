// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'native_dashboard_filter_filter_operator_and_field_value.dart';

class NativeDashboardFilter {
  /// The IDs of charts that this filter applies to.
  final pulumi.Input<List<String>>? chartIds;
  /// The data source for the filter.
  /// Possible values:
  /// UDM, ENTITY, INGESTION_METRICS, RULE_DETECTIONS, RULESETS, GLOBAL,
  /// IOC_MATCHES, RULES, SOAR_CASES, SOAR_PLAYBOOKS, SOAR_CASE_HISTORY,
  /// DATA_TABLE, INVESTIGATION, INVESTIGATION_FEEDBACK
  final pulumi.Input<String>? dataSource;
  /// The display name of the filter.
  final pulumi.Input<String>? displayName;
  /// The UDM field path being filtered.
  final pulumi.Input<String>? fieldPath;
  /// The specific operator and value set for the filter.
  /// Structure is documented below.
  final pulumi.Input<List<NativeDashboardFilterFilterOperatorAndFieldValue>>? filterOperatorAndFieldValues;
  /// The unique ID of the filter.
  final pulumi.Input<String>? id;
  /// Whether the filter is mandatory for the dashboard consumer.
  final pulumi.Input<bool>? isMandatory;
  /// Whether the filter is a standard time range filter.
  final pulumi.Input<bool>? isStandardTimeRangeFilter;
  /// Whether the standard time range filter is currently enabled.
  final pulumi.Input<bool>? isStandardTimeRangeFilterEnabled;

  /// Creates a new [NativeDashboardFilter].
  /// [chartIds] The IDs of charts that this filter applies to.
  /// [dataSource] The data source for the filter.
  /// [displayName] The display name of the filter.
  /// [fieldPath] The UDM field path being filtered.
  /// [filterOperatorAndFieldValues] The specific operator and value set for the filter.
  /// [id] The unique ID of the filter.
  /// [isMandatory] Whether the filter is mandatory for the dashboard consumer.
  /// [isStandardTimeRangeFilter] Whether the filter is a standard time range filter.
  /// [isStandardTimeRangeFilterEnabled] Whether the standard time range filter is currently enabled.
  const NativeDashboardFilter({
    this.chartIds,
    this.dataSource,
    this.displayName,
    this.fieldPath,
    this.filterOperatorAndFieldValues,
    this.id,
    this.isMandatory,
    this.isStandardTimeRangeFilter,
    this.isStandardTimeRangeFilterEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartIds': ?chartIds,
      'dataSource': ?dataSource,
      'displayName': ?displayName,
      'fieldPath': ?fieldPath,
      'filterOperatorAndFieldValues': ?pulumi.Input.mapOptionalInputValue<List<NativeDashboardFilterFilterOperatorAndFieldValue>, List<Map<String, dynamic>>>(filterOperatorAndFieldValues, (value) => pulumi.Input.encodeList<NativeDashboardFilterFilterOperatorAndFieldValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'isMandatory': ?isMandatory,
      'isStandardTimeRangeFilter': ?isStandardTimeRangeFilter,
      'isStandardTimeRangeFilterEnabled': ?isStandardTimeRangeFilterEnabled,
    };
  }

  factory NativeDashboardFilter.fromMap(Map<String, dynamic> map) {
    return NativeDashboardFilter(
      chartIds: (() { final guardedValue = map['chartIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldPath: (() { final guardedValue = map['fieldPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterOperatorAndFieldValues: (() { final guardedValue = map['filterOperatorAndFieldValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NativeDashboardFilterFilterOperatorAndFieldValue>(guardedValue, (value) => NativeDashboardFilterFilterOperatorAndFieldValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isMandatory: (() { final guardedValue = map['isMandatory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isStandardTimeRangeFilter: (() { final guardedValue = map['isStandardTimeRangeFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isStandardTimeRangeFilterEnabled: (() { final guardedValue = map['isStandardTimeRangeFilterEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
