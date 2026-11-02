// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_microvm_checkpoints_checkpoint.dart';
import 'get_microvm_checkpoints_filter.dart';
import 'get_microvm_checkpoints_sort.dart';

/// Result data returned by getMicrovmCheckpoints.
class GetMicrovmCheckpointsResult {
  /// A list of checkpoints satisfying any `filter` and `sort` criteria. Each checkpoint has the following attributes:
  final List<GetMicrovmCheckpointsCheckpoint>? checkpoints;
  final List<GetMicrovmCheckpointsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The ID of the MicroVM the checkpoint was captured from.
  final String? microvmId;
  final List<GetMicrovmCheckpointsSort>? sorts;

  /// Creates a new [GetMicrovmCheckpointsResult].
  /// [checkpoints] A list of checkpoints satisfying any `filter` and `sort` criteria. Each checkpoint has the following attributes:
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [microvmId] The ID of the MicroVM the checkpoint was captured from.
  /// [sorts] Optional.
  const GetMicrovmCheckpointsResult({
    this.checkpoints,
    this.filters,
    this.id,
    this.microvmId,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpoints': ?(() { final guardedValue = checkpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMicrovmCheckpointsCheckpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMicrovmCheckpointsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'microvmId': ?microvmId,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMicrovmCheckpointsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetMicrovmCheckpointsResult.fromMap(Map<String, dynamic> map) {
    return GetMicrovmCheckpointsResult(
      checkpoints: (() { final guardedValue = map['checkpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMicrovmCheckpointsCheckpoint>(guardedValue, (value) => GetMicrovmCheckpointsCheckpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMicrovmCheckpointsFilter>(guardedValue, (value) => GetMicrovmCheckpointsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      microvmId: (() { final guardedValue = map['microvmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMicrovmCheckpointsSort>(guardedValue, (value) => GetMicrovmCheckpointsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
