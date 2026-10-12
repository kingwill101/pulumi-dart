// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_microvm_checkpoints_filter.dart';
import 'get_microvm_checkpoints_sort.dart';

/// {@template pulumi_index_get_microvm_checkpoints_get_microvm_checkpoints_args_doc}
/// Arguments for getMicrovmCheckpoints.
/// {@endtemplate}
/// {@macro pulumi_index_get_microvm_checkpoints_get_microvm_checkpoints_args_doc}
class GetMicrovmCheckpointsArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetMicrovmCheckpointsFilter>?>? filters;
  /// Only return checkpoints captured from this MicroVM.
  final pulumi.Input<String?>? microvmId;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetMicrovmCheckpointsSort>?>? sorts;

  /// Creates a new [GetMicrovmCheckpointsArgs].
  /// [filters] Filter the results.
  /// [microvmId] Only return checkpoints captured from this MicroVM.
  /// [sorts] Sort the results.
  const GetMicrovmCheckpointsArgs({
    this.filters,
    this.microvmId,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetMicrovmCheckpointsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetMicrovmCheckpointsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'microvmId': ?microvmId,
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetMicrovmCheckpointsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetMicrovmCheckpointsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetMicrovmCheckpointsArgs.fromMap(Map<String, dynamic> map) {
    return GetMicrovmCheckpointsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetMicrovmCheckpointsFilter>(guardedValue, (value) => GetMicrovmCheckpointsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      microvmId: (() { final guardedValue = map['microvmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetMicrovmCheckpointsSort>(guardedValue, (value) => GetMicrovmCheckpointsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
