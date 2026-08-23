// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_inference_accelerators_filter.dart';
import 'get_dedicated_inference_accelerators_sort.dart';

/// {@template pulumi_index_get_dedicated_inference_accelerators_get_dedicated_inference_accelerators_args_doc}
/// Arguments for getDedicatedInferenceAccelerators.
/// {@endtemplate}
/// {@macro pulumi_index_get_dedicated_inference_accelerators_get_dedicated_inference_accelerators_args_doc}
class GetDedicatedInferenceAcceleratorsArgs {
  /// The ID of the dedicated inference endpoint to list accelerators for.
  final pulumi.Input<String> dedicatedInferenceId;
  /// Filter the results. The `filter` block is documented below.
  final pulumi.Input<List<GetDedicatedInferenceAcceleratorsFilter>>? filters;
  /// Sort the results. The `sort` block is documented below.
  final pulumi.Input<List<GetDedicatedInferenceAcceleratorsSort>>? sorts;

  /// Creates a new [GetDedicatedInferenceAcceleratorsArgs].
  /// [dedicatedInferenceId] The ID of the dedicated inference endpoint to list accelerators for.
  /// [filters] Filter the results. The `filter` block is documented below.
  /// [sorts] Sort the results. The `sort` block is documented below.
  const GetDedicatedInferenceAcceleratorsArgs({
    required this.dedicatedInferenceId,
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedInferenceId': dedicatedInferenceId,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDedicatedInferenceAcceleratorsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDedicatedInferenceAcceleratorsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetDedicatedInferenceAcceleratorsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetDedicatedInferenceAcceleratorsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDedicatedInferenceAcceleratorsArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceAcceleratorsArgs(
      dedicatedInferenceId: pulumi.Input.fromValue(map['dedicatedInferenceId'] as String),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedInferenceAcceleratorsFilter>(guardedValue, (value) => GetDedicatedInferenceAcceleratorsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedInferenceAcceleratorsSort>(guardedValue, (value) => GetDedicatedInferenceAcceleratorsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
