// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_openai_api_keys_filter.dart';
import 'get_gradientai_openai_api_keys_sort.dart';

/// {@template pulumi_index_get_gradientai_openai_api_keys_get_gradientai_openai_api_keys_args_doc}
/// Arguments for getGradientaiOpenaiApiKeys.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_openai_api_keys_get_gradientai_openai_api_keys_args_doc}
class GetGradientaiOpenaiApiKeysArgs {
  final pulumi.Input<List<GetGradientaiOpenaiApiKeysFilter>>? filters;
  final pulumi.Input<List<GetGradientaiOpenaiApiKeysSort>>? sorts;

  /// Creates a new [GetGradientaiOpenaiApiKeysArgs].
  /// [filters] Optional.
  /// [sorts] Optional.
  GetGradientaiOpenaiApiKeysArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiOpenaiApiKeysFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetGradientaiOpenaiApiKeysFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiOpenaiApiKeysSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetGradientaiOpenaiApiKeysSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGradientaiOpenaiApiKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiOpenaiApiKeysArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetGradientaiOpenaiApiKeysFilter>(map['filters']!, (value) => GetGradientaiOpenaiApiKeysFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sorts: map['sorts'] == null ? null : (pulumi.Input.decodeList<GetGradientaiOpenaiApiKeysSort>(map['sorts']!, (value) => GetGradientaiOpenaiApiKeysSort.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

