// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agents_filter.dart';
import 'get_genai_agents_sort.dart';

/// {@template pulumi_index_get_genai_agents_get_genai_agents_args_doc}
/// Arguments for getGenaiAgents.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_agents_get_genai_agents_args_doc}
class GetGenaiAgentsArgs {
  final pulumi.Input<List<GetGenaiAgentsFilter>>? filters;
  final pulumi.Input<bool>? onlyDeployed;
  final pulumi.Input<List<GetGenaiAgentsSort>>? sorts;

  /// Creates a new [GetGenaiAgentsArgs].
  /// [filters] Optional.
  /// [onlyDeployed] Optional.
  /// [sorts] Optional.
  GetGenaiAgentsArgs({
    this.filters,
    this.onlyDeployed,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetGenaiAgentsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onlyDeployed': ?onlyDeployed,
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetGenaiAgentsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGenaiAgentsArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsFilter>(map['filters']!, (value) => GetGenaiAgentsFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      onlyDeployed: map['onlyDeployed'] == null ? null : (map['onlyDeployed']! as bool).input(),
      sorts: map['sorts'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsSort>(map['sorts']!, (value) => GetGenaiAgentsSort.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

