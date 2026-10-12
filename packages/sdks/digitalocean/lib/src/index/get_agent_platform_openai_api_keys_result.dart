// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_openai_api_keys_filter.dart';
import 'get_agent_platform_openai_api_keys_openai_api_key.dart';
import 'get_agent_platform_openai_api_keys_sort.dart';

/// Result data returned by getAgentPlatformOpenaiApiKeys.
class GetAgentPlatformOpenaiApiKeysResult {
  final List<GetAgentPlatformOpenaiApiKeysFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetAgentPlatformOpenaiApiKeysOpenaiApiKey>? openaiApiKeys;
  final List<GetAgentPlatformOpenaiApiKeysSort>? sorts;

  /// Creates a new [GetAgentPlatformOpenaiApiKeysResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [openaiApiKeys] Optional.
  /// [sorts] Optional.
  const GetAgentPlatformOpenaiApiKeysResult({
    this.filters,
    this.id,
    this.openaiApiKeys,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformOpenaiApiKeysFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'openaiApiKeys': ?(() { final guardedValue = openaiApiKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformOpenaiApiKeysOpenaiApiKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformOpenaiApiKeysSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAgentPlatformOpenaiApiKeysResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformOpenaiApiKeysResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformOpenaiApiKeysFilter>(guardedValue, (value) => GetAgentPlatformOpenaiApiKeysFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      openaiApiKeys: (() { final guardedValue = map['openaiApiKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformOpenaiApiKeysOpenaiApiKey>(guardedValue, (value) => GetAgentPlatformOpenaiApiKeysOpenaiApiKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformOpenaiApiKeysSort>(guardedValue, (value) => GetAgentPlatformOpenaiApiKeysSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
