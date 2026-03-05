// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_replication_status_error.dart';

class ReservationReplicationStatus {
  /// (Output)
  /// The last error encountered while trying to replicate changes from the primary to the
  /// secondary. This field is only available if the replication has not succeeded since.
  /// Structure is documented below.
  final pulumi.Input<List<ReservationReplicationStatusError>>? errors;
  /// (Output)
  /// The time at which the last error was encountered while trying to replicate changes from
  /// the primary to the secondary. This field is only available if the replication has not
  /// succeeded since.
  final pulumi.Input<String>? lastErrorTime;
  /// (Output)
  /// A timestamp corresponding to the last change on the primary that was successfully
  /// replicated to the secondary.
  final pulumi.Input<String>? lastReplicationTime;

  /// Creates a new [ReservationReplicationStatus].
  /// [errors] (Output)
  /// [lastErrorTime] (Output)
  /// [lastReplicationTime] (Output)
  ReservationReplicationStatus({
    this.errors,
    this.lastErrorTime,
    this.lastReplicationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?pulumi.Input.mapOptionalInputValue<List<ReservationReplicationStatusError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ReservationReplicationStatusError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastErrorTime': ?lastErrorTime,
      'lastReplicationTime': ?lastReplicationTime,
    };
  }

  factory ReservationReplicationStatus.fromMap(Map<String, dynamic> map) {
    return ReservationReplicationStatus(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReservationReplicationStatusError>(guardedValue, (value) => ReservationReplicationStatusError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastErrorTime: (() { final guardedValue = map['lastErrorTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastReplicationTime: (() { final guardedValue = map['lastReplicationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

