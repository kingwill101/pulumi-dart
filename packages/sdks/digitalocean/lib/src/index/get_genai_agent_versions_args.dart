// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agent_versions_filter.dart';
import 'get_genai_agent_versions_sort.dart';

/// {@template pulumi_index_get_genai_agent_versions_get_genai_agent_versions_args_doc}
/// Arguments for getGenaiAgentVersions.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_agent_versions_get_genai_agent_versions_args_doc}
class GetGenaiAgentVersionsArgs {
  final pulumi.Input<String> agentId;
  final pulumi.Input<List<GetGenaiAgentVersionsFilter>>? filters;
  final pulumi.Input<List<GetGenaiAgentVersionsSort>>? sorts;

  /// Creates a new [GetGenaiAgentVersionsArgs].
  /// [agentId] Required.
  /// [filters] Optional.
  /// [sorts] Optional.
  GetGenaiAgentVersionsArgs({required this.agentId, this.filters, this.sorts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetGenaiAgentVersionsFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiAgentVersionsFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sorts':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetGenaiAgentVersionsSort>,
            List<Map<String, dynamic>>
          >(
            sorts,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiAgentVersionsSort,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetGenaiAgentVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsArgs(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetGenaiAgentVersionsFilter>(
            guardedValue,
            (value) => GetGenaiAgentVersionsFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sorts: (() {
        final guardedValue = map['sorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetGenaiAgentVersionsSort>(
            guardedValue,
            (value) => GetGenaiAgentVersionsSort.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
