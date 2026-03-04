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
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetGradientaiModelsFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'models':
          pulumi.Input.encodeList<
            GetGradientaiModelsModel,
            Map<String, dynamic>
          >(models, (value) => value.toMap()),
      'sorts': ?(() {
        final guardedValue = sorts;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetGradientaiModelsSort,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory GetGradientaiModelsResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiModelsResult(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetGradientaiModelsFilter>(
          guardedValue,
          (value) => GetGradientaiModelsFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: map['id'] as String,
      models: pulumi.Input.decodeList<GetGradientaiModelsModel>(
        map['models']!,
        (value) => GetGradientaiModelsModel.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      sorts: (() {
        final guardedValue = map['sorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetGradientaiModelsSort>(
          guardedValue,
          (value) => GetGradientaiModelsSort.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
