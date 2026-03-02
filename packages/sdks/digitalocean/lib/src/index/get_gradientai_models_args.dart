// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_models_filter.dart';
import 'get_gradientai_models_sort.dart';

/// {@template pulumi_index_get_gradientai_models_get_gradientai_models_args_doc}
/// Arguments for getGradientaiModels.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_models_get_gradientai_models_args_doc}
class GetGradientaiModelsArgs {
  final pulumi.Input<List<GetGradientaiModelsFilter>>? filters;
  final pulumi.Input<List<GetGradientaiModelsSort>>? sorts;

  /// Creates a new [GetGradientaiModelsArgs].
  /// [filters] Optional.
  /// [sorts] Optional.
  GetGradientaiModelsArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiModelsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetGradientaiModelsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiModelsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetGradientaiModelsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGradientaiModelsArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiModelsArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetGradientaiModelsFilter>(map['filters']!, (value) => GetGradientaiModelsFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sorts: map['sorts'] == null ? null : (pulumi.Input.decodeList<GetGradientaiModelsSort>(map['sorts']!, (value) => GetGradientaiModelsSort.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

