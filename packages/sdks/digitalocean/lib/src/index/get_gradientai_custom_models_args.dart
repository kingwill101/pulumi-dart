// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_custom_models_filter.dart';
import 'get_gradientai_custom_models_sort.dart';

/// {@template pulumi_index_get_gradientai_custom_models_get_gradientai_custom_models_args_doc}
/// Arguments for getGradientaiCustomModels.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_custom_models_get_gradientai_custom_models_args_doc}
class GetGradientaiCustomModelsArgs {
  final pulumi.Input<List<GetGradientaiCustomModelsFilter>>? filters;
  final pulumi.Input<List<GetGradientaiCustomModelsSort>>? sorts;
  final pulumi.Input<String>? status;

  /// Creates a new [GetGradientaiCustomModelsArgs].
  /// [filters] Optional.
  /// [sorts] Optional.
  /// [status] Optional.
  const GetGradientaiCustomModelsArgs({
    this.filters,
    this.sorts,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiCustomModelsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetGradientaiCustomModelsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiCustomModelsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetGradientaiCustomModelsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
    };
  }

  factory GetGradientaiCustomModelsArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiCustomModelsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiCustomModelsFilter>(guardedValue, (value) => GetGradientaiCustomModelsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiCustomModelsSort>(guardedValue, (value) => GetGradientaiCustomModelsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
