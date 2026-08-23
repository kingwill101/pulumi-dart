// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_inferences_filter.dart';
import 'get_dedicated_inferences_sort.dart';

/// {@template pulumi_index_get_dedicated_inferences_get_dedicated_inferences_args_doc}
/// Arguments for getDedicatedInferences.
/// {@endtemplate}
/// {@macro pulumi_index_get_dedicated_inferences_get_dedicated_inferences_args_doc}
class GetDedicatedInferencesArgs {
  /// Filter the results. The `filter` block is documented below.
  final pulumi.Input<List<GetDedicatedInferencesFilter>>? filters;
  /// Sort the results. The `sort` block is documented below.
  final pulumi.Input<List<GetDedicatedInferencesSort>>? sorts;

  /// Creates a new [GetDedicatedInferencesArgs].
  /// [filters] Filter the results. The `filter` block is documented below.
  /// [sorts] Sort the results. The `sort` block is documented below.
  const GetDedicatedInferencesArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDedicatedInferencesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDedicatedInferencesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetDedicatedInferencesSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetDedicatedInferencesSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDedicatedInferencesArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferencesArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedInferencesFilter>(guardedValue, (value) => GetDedicatedInferencesFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedInferencesSort>(guardedValue, (value) => GetDedicatedInferencesSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
