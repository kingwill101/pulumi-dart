// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_inference_accelerators_accelerator.dart';
import 'get_dedicated_inference_accelerators_filter.dart';
import 'get_dedicated_inference_accelerators_sort.dart';

/// Result data returned by getDedicatedInferenceAccelerators.
class GetDedicatedInferenceAcceleratorsResult {
  /// A list of accelerators satisfying any `filter` and `sort` criteria. Each element contains:
  final List<GetDedicatedInferenceAcceleratorsAccelerator> accelerators;
  final String dedicatedInferenceId;
  final List<GetDedicatedInferenceAcceleratorsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetDedicatedInferenceAcceleratorsSort>? sorts;

  /// Creates a new [GetDedicatedInferenceAcceleratorsResult].
  /// [accelerators] A list of accelerators satisfying any `filter` and `sort` criteria. Each element contains:
  /// [dedicatedInferenceId] Required.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  const GetDedicatedInferenceAcceleratorsResult({
    required this.accelerators,
    required this.dedicatedInferenceId,
    this.filters,
    required this.id,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': pulumi.Input.encodeList<GetDedicatedInferenceAcceleratorsAccelerator, Map<String, dynamic>>(accelerators, (value) => value.toMap()),
      'dedicatedInferenceId': dedicatedInferenceId,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedInferenceAcceleratorsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedInferenceAcceleratorsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDedicatedInferenceAcceleratorsResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceAcceleratorsResult(
      accelerators: pulumi.Input.decodeList<GetDedicatedInferenceAcceleratorsAccelerator>(map['accelerators']!, (value) => GetDedicatedInferenceAcceleratorsAccelerator.fromMap((value as Map).cast<String, dynamic>())),
      dedicatedInferenceId: map['dedicatedInferenceId'] as String,
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedInferenceAcceleratorsFilter>(guardedValue, (value) => GetDedicatedInferenceAcceleratorsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedInferenceAcceleratorsSort>(guardedValue, (value) => GetDedicatedInferenceAcceleratorsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
