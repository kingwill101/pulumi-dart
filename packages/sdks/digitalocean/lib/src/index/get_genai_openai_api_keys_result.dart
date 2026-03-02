// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_openai_api_keys_filter.dart';
import 'get_genai_openai_api_keys_openai_api_key.dart';
import 'get_genai_openai_api_keys_sort.dart';

/// Result data returned by getGenaiOpenaiApiKeys.
class GetGenaiOpenaiApiKeysResult {
  final List<GetGenaiOpenaiApiKeysFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGenaiOpenaiApiKeysOpenaiApiKey> openaiApiKeys;
  final List<GetGenaiOpenaiApiKeysSort>? sorts;

  /// Creates a new [GetGenaiOpenaiApiKeysResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [openaiApiKeys] Required.
  /// [sorts] Optional.
  GetGenaiOpenaiApiKeysResult({
    this.filters,
    required this.id,
    required this.openaiApiKeys,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetGenaiOpenaiApiKeysFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'openaiApiKeys': pulumi.Input.encodeList<GetGenaiOpenaiApiKeysOpenaiApiKey, Map<String, dynamic>>(openaiApiKeys, (value) => value.toMap()),
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetGenaiOpenaiApiKeysSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
    };
  }

  factory GetGenaiOpenaiApiKeysResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiOpenaiApiKeysResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetGenaiOpenaiApiKeysFilter>(map['filters']!, (value) => GetGenaiOpenaiApiKeysFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      openaiApiKeys: pulumi.Input.decodeList<GetGenaiOpenaiApiKeysOpenaiApiKey>(map['openaiApiKeys'], (value) => GetGenaiOpenaiApiKeysOpenaiApiKey.fromMap((value as Map).cast<String, dynamic>())),
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetGenaiOpenaiApiKeysSort>(map['sorts']!, (value) => GetGenaiOpenaiApiKeysSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

