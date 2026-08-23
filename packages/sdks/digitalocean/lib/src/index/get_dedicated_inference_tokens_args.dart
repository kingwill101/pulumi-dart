// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_inference_tokens_filter.dart';
import 'get_dedicated_inference_tokens_sort.dart';

/// {@template pulumi_index_get_dedicated_inference_tokens_get_dedicated_inference_tokens_args_doc}
/// Arguments for getDedicatedInferenceTokens.
/// {@endtemplate}
/// {@macro pulumi_index_get_dedicated_inference_tokens_get_dedicated_inference_tokens_args_doc}
class GetDedicatedInferenceTokensArgs {
  /// The ID of the dedicated inference endpoint to list tokens for.
  final pulumi.Input<String> dedicatedInferenceId;
  /// Filter the results. The `filter` block is documented below.
  final pulumi.Input<List<GetDedicatedInferenceTokensFilter>>? filters;
  /// Sort the results. The `sort` block is documented below.
  final pulumi.Input<List<GetDedicatedInferenceTokensSort>>? sorts;

  /// Creates a new [GetDedicatedInferenceTokensArgs].
  /// [dedicatedInferenceId] The ID of the dedicated inference endpoint to list tokens for.
  /// [filters] Filter the results. The `filter` block is documented below.
  /// [sorts] Sort the results. The `sort` block is documented below.
  const GetDedicatedInferenceTokensArgs({
    required this.dedicatedInferenceId,
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedInferenceId': dedicatedInferenceId,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDedicatedInferenceTokensFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDedicatedInferenceTokensFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetDedicatedInferenceTokensSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetDedicatedInferenceTokensSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDedicatedInferenceTokensArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceTokensArgs(
      dedicatedInferenceId: pulumi.Input.fromValue(map['dedicatedInferenceId'] as String),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedInferenceTokensFilter>(guardedValue, (value) => GetDedicatedInferenceTokensFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedInferenceTokensSort>(guardedValue, (value) => GetDedicatedInferenceTokensSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
