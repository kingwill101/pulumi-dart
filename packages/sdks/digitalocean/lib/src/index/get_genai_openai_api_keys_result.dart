// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_openai_api_keys_filter.dart';
import 'get_genai_openai_api_keys_openai_api_key.dart';
import 'get_genai_openai_api_keys_sort.dart';

/// Result data returned by getGenaiOpenaiApiKeys.
class GetGenaiOpenaiApiKeysResult {
  final List<GetGenaiOpenaiApiKeysFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetGenaiOpenaiApiKeysOpenaiApiKey>? openaiApiKeys;
  final List<GetGenaiOpenaiApiKeysSort>? sorts;

  /// Creates a new [GetGenaiOpenaiApiKeysResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [openaiApiKeys] Optional.
  /// [sorts] Optional.
  const GetGenaiOpenaiApiKeysResult({
    this.filters,
    this.id,
    this.openaiApiKeys,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiOpenaiApiKeysFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'openaiApiKeys': ?(() { final guardedValue = openaiApiKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiOpenaiApiKeysOpenaiApiKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiOpenaiApiKeysSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGenaiOpenaiApiKeysResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiOpenaiApiKeysResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiOpenaiApiKeysFilter>(guardedValue, (value) => GetGenaiOpenaiApiKeysFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      openaiApiKeys: (() { final guardedValue = map['openaiApiKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiOpenaiApiKeysOpenaiApiKey>(guardedValue, (value) => GetGenaiOpenaiApiKeysOpenaiApiKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiOpenaiApiKeysSort>(guardedValue, (value) => GetGenaiOpenaiApiKeysSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
