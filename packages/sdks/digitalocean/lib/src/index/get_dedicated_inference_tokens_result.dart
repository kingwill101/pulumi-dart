// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_inference_tokens_filter.dart';
import 'get_dedicated_inference_tokens_sort.dart';
import 'get_dedicated_inference_tokens_token.dart';

/// Result data returned by getDedicatedInferenceTokens.
class GetDedicatedInferenceTokensResult {
  final String dedicatedInferenceId;
  final List<GetDedicatedInferenceTokensFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetDedicatedInferenceTokensSort>? sorts;
  /// A list of tokens satisfying any `filter` and `sort` criteria. Each element contains:
  final List<GetDedicatedInferenceTokensToken> tokens;

  /// Creates a new [GetDedicatedInferenceTokensResult].
  /// [dedicatedInferenceId] Required.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  /// [tokens] A list of tokens satisfying any `filter` and `sort` criteria. Each element contains:
  const GetDedicatedInferenceTokensResult({
    required this.dedicatedInferenceId,
    this.filters,
    required this.id,
    this.sorts,
    required this.tokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedInferenceId': dedicatedInferenceId,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedInferenceTokensFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedInferenceTokensSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tokens': pulumi.Input.encodeList<GetDedicatedInferenceTokensToken, Map<String, dynamic>>(tokens, (value) => value.toMap()),
    };
  }

  factory GetDedicatedInferenceTokensResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceTokensResult(
      dedicatedInferenceId: map['dedicatedInferenceId'] as String,
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedInferenceTokensFilter>(guardedValue, (value) => GetDedicatedInferenceTokensFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedInferenceTokensSort>(guardedValue, (value) => GetDedicatedInferenceTokensSort.fromMap((value as Map).cast<String, dynamic>())); })(),
      tokens: pulumi.Input.decodeList<GetDedicatedInferenceTokensToken>(map['tokens']!, (value) => GetDedicatedInferenceTokensToken.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
