// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_custom_models_filter.dart';
import 'get_agent_platform_custom_models_sort.dart';

/// {@template pulumi_index_get_agent_platform_custom_models_get_agent_platform_custom_models_args_doc}
/// Arguments for getAgentPlatformCustomModels.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_custom_models_get_agent_platform_custom_models_args_doc}
class GetAgentPlatformCustomModelsArgs {
  final pulumi.Input<List<GetAgentPlatformCustomModelsFilter>?>? filters;
  final pulumi.Input<List<GetAgentPlatformCustomModelsSort>?>? sorts;
  final pulumi.Input<String?>? status;

  /// Creates a new [GetAgentPlatformCustomModelsArgs].
  /// [filters] Optional.
  /// [sorts] Optional.
  /// [status] Optional.
  const GetAgentPlatformCustomModelsArgs({
    this.filters,
    this.sorts,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformCustomModelsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetAgentPlatformCustomModelsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformCustomModelsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetAgentPlatformCustomModelsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
    };
  }

  factory GetAgentPlatformCustomModelsArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformCustomModelsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformCustomModelsFilter>(guardedValue, (value) => GetAgentPlatformCustomModelsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformCustomModelsSort>(guardedValue, (value) => GetAgentPlatformCustomModelsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
