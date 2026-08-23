// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agent_versions_filter.dart';
import 'get_gradientai_agent_versions_sort.dart';

/// {@template pulumi_index_get_gradientai_agent_versions_get_gradientai_agent_versions_args_doc}
/// Arguments for getGradientaiAgentVersions.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_agent_versions_get_gradientai_agent_versions_args_doc}
class GetGradientaiAgentVersionsArgs {
  final pulumi.Input<String> agentId;
  final pulumi.Input<List<GetGradientaiAgentVersionsFilter>>? filters;
  final pulumi.Input<List<GetGradientaiAgentVersionsSort>>? sorts;

  /// Creates a new [GetGradientaiAgentVersionsArgs].
  /// [agentId] Required.
  /// [filters] Optional.
  /// [sorts] Optional.
  const GetGradientaiAgentVersionsArgs({
    required this.agentId,
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentVersionsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetGradientaiAgentVersionsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentVersionsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetGradientaiAgentVersionsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGradientaiAgentVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentVersionsArgs(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiAgentVersionsFilter>(guardedValue, (value) => GetGradientaiAgentVersionsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiAgentVersionsSort>(guardedValue, (value) => GetGradientaiAgentVersionsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
