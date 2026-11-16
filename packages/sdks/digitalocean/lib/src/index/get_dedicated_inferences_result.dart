// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_inferences_dedicated_inference.dart';
import 'get_dedicated_inferences_filter.dart';
import 'get_dedicated_inferences_sort.dart';

/// Result data returned by getDedicatedInferences.
class GetDedicatedInferencesResult {
  /// A list of dedicated inference endpoints satisfying any `filter` and `sort` criteria. Each element contains the following attributes:
  final List<GetDedicatedInferencesDedicatedInference>? dedicatedInferences;
  final List<GetDedicatedInferencesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetDedicatedInferencesSort>? sorts;

  /// Creates a new [GetDedicatedInferencesResult].
  /// [dedicatedInferences] A list of dedicated inference endpoints satisfying any `filter` and `sort` criteria. Each element contains the following attributes:
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  const GetDedicatedInferencesResult({
    this.dedicatedInferences,
    this.filters,
    this.id,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedInferences': ?(() { final guardedValue = dedicatedInferences; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedInferencesDedicatedInference, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedInferencesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedInferencesSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDedicatedInferencesResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferencesResult(
      dedicatedInferences: (() { final guardedValue = map['dedicatedInferences']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedInferencesDedicatedInference>(guardedValue, (value) => GetDedicatedInferencesDedicatedInference.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedInferencesFilter>(guardedValue, (value) => GetDedicatedInferencesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedInferencesSort>(guardedValue, (value) => GetDedicatedInferencesSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
