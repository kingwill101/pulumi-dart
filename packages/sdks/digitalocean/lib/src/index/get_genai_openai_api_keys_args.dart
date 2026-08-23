// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_openai_api_keys_filter.dart';
import 'get_genai_openai_api_keys_sort.dart';

/// {@template pulumi_index_get_genai_openai_api_keys_get_genai_openai_api_keys_args_doc}
/// Arguments for getGenaiOpenaiApiKeys.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_openai_api_keys_get_genai_openai_api_keys_args_doc}
class GetGenaiOpenaiApiKeysArgs {
  final pulumi.Input<List<GetGenaiOpenaiApiKeysFilter>>? filters;
  final pulumi.Input<List<GetGenaiOpenaiApiKeysSort>>? sorts;

  /// Creates a new [GetGenaiOpenaiApiKeysArgs].
  /// [filters] Optional.
  /// [sorts] Optional.
  const GetGenaiOpenaiApiKeysArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiOpenaiApiKeysFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetGenaiOpenaiApiKeysFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiOpenaiApiKeysSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetGenaiOpenaiApiKeysSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGenaiOpenaiApiKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiOpenaiApiKeysArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiOpenaiApiKeysFilter>(guardedValue, (value) => GetGenaiOpenaiApiKeysFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiOpenaiApiKeysSort>(guardedValue, (value) => GetGenaiOpenaiApiKeysSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
