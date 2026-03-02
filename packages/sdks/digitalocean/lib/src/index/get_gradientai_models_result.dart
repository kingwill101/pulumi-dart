// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_models_filter.dart';
import 'get_gradientai_models_model.dart';
import 'get_gradientai_models_sort.dart';

/// Result data returned by getGradientaiModels.
class GetGradientaiModelsResult {
  final List<GetGradientaiModelsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGradientaiModelsModel> models;
  final List<GetGradientaiModelsSort>? sorts;

  /// Creates a new [GetGradientaiModelsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [models] Required.
  /// [sorts] Optional.
  GetGradientaiModelsResult({
    this.filters,
    required this.id,
    required this.models,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetGradientaiModelsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'models': pulumi.Input.encodeList<GetGradientaiModelsModel, Map<String, dynamic>>(models, (value) => value.toMap()),
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetGradientaiModelsSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
    };
  }

  factory GetGradientaiModelsResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiModelsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetGradientaiModelsFilter>(map['filters']!, (value) => GetGradientaiModelsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      models: pulumi.Input.decodeList<GetGradientaiModelsModel>(map['models'], (value) => GetGradientaiModelsModel.fromMap((value as Map).cast<String, dynamic>())),
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetGradientaiModelsSort>(map['sorts']!, (value) => GetGradientaiModelsSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

