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
  const GetGradientaiOpenaiApiKeysArgs({
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
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiOpenaiApiKeysFilter>(guardedValue, (value) => GetGradientaiOpenaiApiKeysFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiOpenaiApiKeysSort>(guardedValue, (value) => GetGradientaiOpenaiApiKeysSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
