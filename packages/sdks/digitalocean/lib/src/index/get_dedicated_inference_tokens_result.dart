// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_inference_tokens_filter.dart';
import 'get_dedicated_inference_tokens_sort.dart';
import 'get_dedicated_inference_tokens_token.dart';

/// Result data returned by getDedicatedInferenceTokens.
class GetDedicatedInferenceTokensResult {
  final String? dedicatedInferenceId;
  final List<GetDedicatedInferenceTokensFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetDedicatedInferenceTokensSort>? sorts;
  /// A list of tokens satisfying any `filter` and `sort` criteria. Each element contains:
  final List<GetDedicatedInferenceTokensToken>? tokens;

  /// Creates a new [GetDedicatedInferenceTokensResult].
  /// [dedicatedInferenceId] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  /// [tokens] A list of tokens satisfying any `filter` and `sort` criteria. Each element contains:
  const GetDedicatedInferenceTokensResult({
    this.dedicatedInferenceId,
    this.filters,
    this.id,
    this.sorts,
    this.tokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedInferenceId': ?dedicatedInferenceId,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedInferenceTokensFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedInferenceTokensSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tokens': ?(() { final guardedValue = tokens; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedInferenceTokensToken, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDedicatedInferenceTokensResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceTokensResult(
      dedicatedInferenceId: (() { final guardedValue = map['dedicatedInferenceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedInferenceTokensFilter>(guardedValue, (value) => GetDedicatedInferenceTokensFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedInferenceTokensSort>(guardedValue, (value) => GetDedicatedInferenceTokensSort.fromMap((value as Map).cast<String, dynamic>())); })(),
      tokens: (() { final guardedValue = map['tokens']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedInferenceTokensToken>(guardedValue, (value) => GetDedicatedInferenceTokensToken.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
