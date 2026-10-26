// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_openai_api_keys_filter.dart';
import 'get_agent_platform_openai_api_keys_sort.dart';

/// {@template pulumi_index_get_agent_platform_openai_api_keys_get_agent_platform_openai_api_keys_args_doc}
/// Arguments for getAgentPlatformOpenaiApiKeys.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_openai_api_keys_get_agent_platform_openai_api_keys_args_doc}
class GetAgentPlatformOpenaiApiKeysArgs {
  final pulumi.Input<List<GetAgentPlatformOpenaiApiKeysFilter>?>? filters;
  final pulumi.Input<List<GetAgentPlatformOpenaiApiKeysSort>?>? sorts;

  /// Creates a new [GetAgentPlatformOpenaiApiKeysArgs].
  /// [filters] Optional.
  /// [sorts] Optional.
  const GetAgentPlatformOpenaiApiKeysArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformOpenaiApiKeysFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetAgentPlatformOpenaiApiKeysFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformOpenaiApiKeysSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetAgentPlatformOpenaiApiKeysSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAgentPlatformOpenaiApiKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformOpenaiApiKeysArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformOpenaiApiKeysFilter>(guardedValue, (value) => GetAgentPlatformOpenaiApiKeysFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformOpenaiApiKeysSort>(guardedValue, (value) => GetAgentPlatformOpenaiApiKeysSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
