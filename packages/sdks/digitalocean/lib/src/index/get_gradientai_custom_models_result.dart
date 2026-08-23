// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_custom_models_custom_model.dart';
import 'get_gradientai_custom_models_filter.dart';
import 'get_gradientai_custom_models_sort.dart';

/// Result data returned by getGradientaiCustomModels.
class GetGradientaiCustomModelsResult {
  final List<GetGradientaiCustomModelsCustomModel> customModels;
  final List<GetGradientaiCustomModelsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGradientaiCustomModelsSort>? sorts;
  final String? status;

  /// Creates a new [GetGradientaiCustomModelsResult].
  /// [customModels] Required.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  /// [status] Optional.
  const GetGradientaiCustomModelsResult({
    required this.customModels,
    this.filters,
    required this.id,
    this.sorts,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customModels': pulumi.Input.encodeList<GetGradientaiCustomModelsCustomModel, Map<String, dynamic>>(customModels, (value) => value.toMap()),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiCustomModelsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiCustomModelsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
    };
  }

  factory GetGradientaiCustomModelsResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiCustomModelsResult(
      customModels: pulumi.Input.decodeList<GetGradientaiCustomModelsCustomModel>(map['customModels']!, (value) => GetGradientaiCustomModelsCustomModel.fromMap((value as Map).cast<String, dynamic>())),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiCustomModelsFilter>(guardedValue, (value) => GetGradientaiCustomModelsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiCustomModelsSort>(guardedValue, (value) => GetGradientaiCustomModelsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
