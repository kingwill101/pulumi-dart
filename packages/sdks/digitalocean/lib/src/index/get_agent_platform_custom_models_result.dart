// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_custom_models_custom_model.dart';
import 'get_agent_platform_custom_models_filter.dart';
import 'get_agent_platform_custom_models_sort.dart';

/// Result data returned by getAgentPlatformCustomModels.
class GetAgentPlatformCustomModelsResult {
  final List<GetAgentPlatformCustomModelsCustomModel>? customModels;
  final List<GetAgentPlatformCustomModelsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetAgentPlatformCustomModelsSort>? sorts;
  final String? status;

  /// Creates a new [GetAgentPlatformCustomModelsResult].
  /// [customModels] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  /// [status] Optional.
  const GetAgentPlatformCustomModelsResult({
    this.customModels,
    this.filters,
    this.id,
    this.sorts,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customModels': ?(() { final guardedValue = customModels; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformCustomModelsCustomModel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformCustomModelsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformCustomModelsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
    };
  }

  factory GetAgentPlatformCustomModelsResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformCustomModelsResult(
      customModels: (() { final guardedValue = map['customModels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformCustomModelsCustomModel>(guardedValue, (value) => GetAgentPlatformCustomModelsCustomModel.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformCustomModelsFilter>(guardedValue, (value) => GetAgentPlatformCustomModelsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformCustomModelsSort>(guardedValue, (value) => GetAgentPlatformCustomModelsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
