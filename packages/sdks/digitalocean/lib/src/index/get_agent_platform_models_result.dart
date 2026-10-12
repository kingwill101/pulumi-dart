// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_models_filter.dart';
import 'get_agent_platform_models_model.dart';
import 'get_agent_platform_models_sort.dart';

/// Result data returned by getAgentPlatformModels.
class GetAgentPlatformModelsResult {
  final List<GetAgentPlatformModelsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetAgentPlatformModelsModel>? models;
  final List<GetAgentPlatformModelsSort>? sorts;

  /// Creates a new [GetAgentPlatformModelsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [models] Optional.
  /// [sorts] Optional.
  const GetAgentPlatformModelsResult({
    this.filters,
    this.id,
    this.models,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformModelsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'models': ?(() { final guardedValue = models; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformModelsModel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformModelsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAgentPlatformModelsResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformModelsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformModelsFilter>(guardedValue, (value) => GetAgentPlatformModelsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      models: (() { final guardedValue = map['models']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformModelsModel>(guardedValue, (value) => GetAgentPlatformModelsModel.fromMap((value as Map).cast<String, dynamic>())); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformModelsSort>(guardedValue, (value) => GetAgentPlatformModelsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
