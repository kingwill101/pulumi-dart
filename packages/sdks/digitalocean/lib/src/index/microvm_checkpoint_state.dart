// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'microvm_checkpoint_size.dart';

/// Input properties used for looking up and filtering MicrovmCheckpoint resources.
class MicrovmCheckpointState {
  /// The date and time the checkpoint was created.
  final pulumi.Input<String?>? createdAt;
  /// The size of the persisted disk image in bytes.
  final pulumi.Input<int?>? diskBytes;
  /// The size of the persisted memory image in bytes.
  final pulumi.Input<int?>? memoryBytes;
  /// The ID of the running MicroVM to checkpoint. Changing this forces a new checkpoint.
  final pulumi.Input<String?>? microvmId;
  /// The name of the MicroVM the checkpoint was captured from.
  final pulumi.Input<String?>? microvmName;
  /// A name for the checkpoint. Changing this forces a new checkpoint.
  final pulumi.Input<String?>? name;
  /// The slug of the region the checkpoint is stored in.
  final pulumi.Input<String?>? region;
  /// The size a MicroVM restored from this checkpoint inherits. Empty when the checkpoint does not record one, in which case the restored MicroVM must set `size`.
  final pulumi.Input<List<MicrovmCheckpointSize>?>? sizes;
  /// The status of the checkpoint, such as `CHECKPOINT_AVAILABLE`.
  final pulumi.Input<String?>? status;

  /// Creates a new [MicrovmCheckpointState].
  /// [createdAt] The date and time the checkpoint was created.
  /// [diskBytes] The size of the persisted disk image in bytes.
  /// [memoryBytes] The size of the persisted memory image in bytes.
  /// [microvmId] The ID of the running MicroVM to checkpoint. Changing this forces a new checkpoint.
  /// [microvmName] The name of the MicroVM the checkpoint was captured from.
  /// [name] A name for the checkpoint. Changing this forces a new checkpoint.
  /// [region] The slug of the region the checkpoint is stored in.
  /// [sizes] The size a MicroVM restored from this checkpoint inherits. Empty when the checkpoint does not record one, in which case the restored MicroVM must set `size`.
  /// [status] The status of the checkpoint, such as `CHECKPOINT_AVAILABLE`.
  const MicrovmCheckpointState({
    this.createdAt,
    this.diskBytes,
    this.memoryBytes,
    this.microvmId,
    this.microvmName,
    this.name,
    this.region,
    this.sizes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'diskBytes': ?diskBytes,
      'memoryBytes': ?memoryBytes,
      'microvmId': ?microvmId,
      'microvmName': ?microvmName,
      'name': ?name,
      'region': ?region,
      'sizes': ?pulumi.Input.mapOptionalInputValue<List<MicrovmCheckpointSize>, List<Map<String, dynamic>>>(sizes, (value) => pulumi.Input.encodeList<MicrovmCheckpointSize, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
    };
  }

  factory MicrovmCheckpointState.fromMap(Map<String, dynamic> map) {
    return MicrovmCheckpointState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskBytes: (() { final guardedValue = map['diskBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      memoryBytes: (() { final guardedValue = map['memoryBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      microvmId: (() { final guardedValue = map['microvmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microvmName: (() { final guardedValue = map['microvmName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizes: (() { final guardedValue = map['sizes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MicrovmCheckpointSize>(guardedValue, (value) => MicrovmCheckpointSize.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
