// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_models_filter.dart';
import 'get_genai_models_sort.dart';

/// {@template pulumi_index_get_genai_models_get_genai_models_args_doc}
/// Arguments for getGenaiModels.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_models_get_genai_models_args_doc}
class GetGenaiModelsArgs {
  final pulumi.Input<List<GetGenaiModelsFilter>>? filters;
  final pulumi.Input<List<GetGenaiModelsSort>>? sorts;

  /// Creates a new [GetGenaiModelsArgs].
  /// [filters] Optional.
  /// [sorts] Optional.
  GetGenaiModelsArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiModelsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetGenaiModelsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiModelsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetGenaiModelsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGenaiModelsArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiModelsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiModelsFilter>(guardedValue, (value) => GetGenaiModelsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiModelsSort>(guardedValue, (value) => GetGenaiModelsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

