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
  const GetGenaiAgentsArgs({
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
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsFilter>(guardedValue, (value) => GetGenaiAgentsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      onlyDeployed: (() { final guardedValue = map['onlyDeployed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsSort>(guardedValue, (value) => GetGenaiAgentsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

