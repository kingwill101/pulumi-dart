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
  const GetGradientaiOpenaiApiKeysResult({
    this.filters,
    required this.id,
    required this.openaiApiKeys,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiOpenaiApiKeysFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'openaiApiKeys': pulumi.Input.encodeList<GetGradientaiOpenaiApiKeysOpenaiApiKey, Map<String, dynamic>>(openaiApiKeys, (value) => value.toMap()),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiOpenaiApiKeysSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGradientaiOpenaiApiKeysResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiOpenaiApiKeysResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiOpenaiApiKeysFilter>(guardedValue, (value) => GetGradientaiOpenaiApiKeysFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      openaiApiKeys: pulumi.Input.decodeList<GetGradientaiOpenaiApiKeysOpenaiApiKey>(map['openaiApiKeys']!, (value) => GetGradientaiOpenaiApiKeysOpenaiApiKey.fromMap((value as Map).cast<String, dynamic>())),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiOpenaiApiKeysSort>(guardedValue, (value) => GetGradientaiOpenaiApiKeysSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

