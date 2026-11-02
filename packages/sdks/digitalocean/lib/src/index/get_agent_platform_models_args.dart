// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_models_filter.dart';
import 'get_agent_platform_models_sort.dart';

/// {@template pulumi_index_get_agent_platform_models_get_agent_platform_models_args_doc}
/// Arguments for getAgentPlatformModels.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_models_get_agent_platform_models_args_doc}
class GetAgentPlatformModelsArgs {
  final pulumi.Input<List<GetAgentPlatformModelsFilter>?>? filters;
  final pulumi.Input<List<GetAgentPlatformModelsSort>?>? sorts;

  /// Creates a new [GetAgentPlatformModelsArgs].
  /// [filters] Optional.
  /// [sorts] Optional.
  const GetAgentPlatformModelsArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformModelsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetAgentPlatformModelsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformModelsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetAgentPlatformModelsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAgentPlatformModelsArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformModelsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformModelsFilter>(guardedValue, (value) => GetAgentPlatformModelsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformModelsSort>(guardedValue, (value) => GetAgentPlatformModelsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
