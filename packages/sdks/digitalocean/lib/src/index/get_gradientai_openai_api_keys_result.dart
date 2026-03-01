// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_openai_api_keys_filter.dart';
import 'get_gradientai_openai_api_keys_openai_api_key.dart';
import 'get_gradientai_openai_api_keys_sort.dart';

/// Result data returned by getGradientaiOpenaiApiKeys.
class GetGradientaiOpenaiApiKeysResult {
  final List<GetGradientaiOpenaiApiKeysFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGradientaiOpenaiApiKeysOpenaiApiKey> openaiApiKeys;
  final List<GetGradientaiOpenaiApiKeysSort>? sorts;

  /// Creates a new [GetGradientaiOpenaiApiKeysResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [openaiApiKeys] Required.
  /// [sorts] Optional.
  GetGradientaiOpenaiApiKeysResult({
    this.filters,
    required this.id,
    required this.openaiApiKeys,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetGradientaiOpenaiApiKeysFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'openaiApiKeys': pulumi.Input.encodeList<GetGradientaiOpenaiApiKeysOpenaiApiKey, Map<String, dynamic>>(openaiApiKeys, (value) => value.toMap()),
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetGradientaiOpenaiApiKeysSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
    };
  }

  factory GetGradientaiOpenaiApiKeysResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiOpenaiApiKeysResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetGradientaiOpenaiApiKeysFilter>(map['filters'], (value) => GetGradientaiOpenaiApiKeysFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      openaiApiKeys: pulumi.Input.decodeList<GetGradientaiOpenaiApiKeysOpenaiApiKey>(map['openaiApiKeys'], (value) => GetGradientaiOpenaiApiKeysOpenaiApiKey.fromMap((value as Map).cast<String, dynamic>())),
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetGradientaiOpenaiApiKeysSort>(map['sorts'], (value) => GetGradientaiOpenaiApiKeysSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

