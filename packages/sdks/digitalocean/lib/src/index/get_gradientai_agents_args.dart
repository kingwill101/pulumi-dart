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
    pulumi.Output<List<GetGradientaiAgentsFilter>>? filters,
    pulumi.Output<bool>? onlyDeployed,
    pulumi.Output<List<GetGradientaiAgentsSort>>? sorts,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetGradientaiAgentsFilter>>(filters),
      onlyDeployed = pulumi.Input.asOptionalInput<bool>(onlyDeployed),
      sorts = pulumi.Input.asOptionalInput<List<GetGradientaiAgentsSort>>(sorts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetGradientaiAgentsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onlyDeployed': ?onlyDeployed,
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetGradientaiAgentsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGradientaiAgentsArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetGradientaiAgentsFilter>>(pulumi.Input.decodeList<GetGradientaiAgentsFilter>(map['filters'], (value) => GetGradientaiAgentsFilter.fromMap((value as Map).cast<String, dynamic>()))),
      onlyDeployed: map['onlyDeployed'] == null ? null : pulumi.Output.create<bool>(map['onlyDeployed'] as bool),
      sorts: map['sorts'] == null ? null : pulumi.Output.create<List<GetGradientaiAgentsSort>>(pulumi.Input.decodeList<GetGradientaiAgentsSort>(map['sorts'], (value) => GetGradientaiAgentsSort.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

