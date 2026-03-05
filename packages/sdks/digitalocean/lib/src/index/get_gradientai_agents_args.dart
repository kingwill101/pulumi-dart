// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agents_filter.dart';
import 'get_gradientai_agents_sort.dart';

/// {@template pulumi_index_get_gradientai_agents_get_gradientai_agents_args_doc}
/// Arguments for getGradientaiAgents.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_agents_get_gradientai_agents_args_doc}
class GetGradientaiAgentsArgs {
  final pulumi.Input<List<GetGradientaiAgentsFilter>>? filters;
  final pulumi.Input<bool>? onlyDeployed;
  final pulumi.Input<List<GetGradientaiAgentsSort>>? sorts;

  /// Creates a new [GetGradientaiAgentsArgs].
  /// [filters] Optional.
  /// [onlyDeployed] Optional.
  /// [sorts] Optional.
  GetGradientaiAgentsArgs({
    this.filters,
    this.onlyDeployed,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetGradientaiAgentsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onlyDeployed': ?onlyDeployed,
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetGradientaiAgentsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGradientaiAgentsArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiAgentsFilter>(guardedValue, (value) => GetGradientaiAgentsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      onlyDeployed: (() { final guardedValue = map['onlyDeployed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiAgentsSort>(guardedValue, (value) => GetGradientaiAgentsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

