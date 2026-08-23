// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_models_filter.dart';
import 'get_genai_models_model.dart';
import 'get_genai_models_sort.dart';

/// Result data returned by getGenaiModels.
class GetGenaiModelsResult {
  final List<GetGenaiModelsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGenaiModelsModel> models;
  final List<GetGenaiModelsSort>? sorts;

  /// Creates a new [GetGenaiModelsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [models] Required.
  /// [sorts] Optional.
  const GetGenaiModelsResult({
    this.filters,
    required this.id,
    required this.models,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiModelsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'models': pulumi.Input.encodeList<GetGenaiModelsModel, Map<String, dynamic>>(models, (value) => value.toMap()),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiModelsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGenaiModelsResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiModelsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiModelsFilter>(guardedValue, (value) => GetGenaiModelsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      models: pulumi.Input.decodeList<GetGenaiModelsModel>(map['models']!, (value) => GetGenaiModelsModel.fromMap((value as Map).cast<String, dynamic>())),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiModelsSort>(guardedValue, (value) => GetGenaiModelsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
