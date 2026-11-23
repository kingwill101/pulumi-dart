// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_microvm_checkpoints_checkpoint_size.dart';

class GetMicrovmCheckpointsCheckpoint {
  /// The date and time the checkpoint was created.
  final pulumi.Input<String> createdAt;
  /// The size of the persisted disk image in bytes.
  final pulumi.Input<int> diskBytes;
  /// The ID of the checkpoint.
  final pulumi.Input<String> id;
  /// The size of the persisted memory image in bytes.
  final pulumi.Input<int> memoryBytes;
  /// Only return checkpoints captured from this MicroVM.
  final pulumi.Input<String> microvmId;
  /// The name of the MicroVM the checkpoint was captured from.
  final pulumi.Input<String> microvmName;
  /// The name of the checkpoint.
  final pulumi.Input<String> name;
  /// The slug of the region the checkpoint is stored in.
  final pulumi.Input<String> region;
  /// The size a MicroVM restored from this checkpoint inherits (`cpu`, `memory`, `disk`). Empty when the checkpoint does not record one.
  final pulumi.Input<List<GetMicrovmCheckpointsCheckpointSize>> sizes;
  /// The status of the checkpoint, such as `CHECKPOINT_AVAILABLE`.
  final pulumi.Input<String> status;

  /// Creates a new [GetMicrovmCheckpointsCheckpoint].
  /// [createdAt] The date and time the checkpoint was created.
  /// [diskBytes] The size of the persisted disk image in bytes.
  /// [id] The ID of the checkpoint.
  /// [memoryBytes] The size of the persisted memory image in bytes.
  /// [microvmId] Only return checkpoints captured from this MicroVM.
  /// [microvmName] The name of the MicroVM the checkpoint was captured from.
  /// [name] The name of the checkpoint.
  /// [region] The slug of the region the checkpoint is stored in.
  /// [sizes] The size a MicroVM restored from this checkpoint inherits (`cpu`, `memory`, `disk`). Empty when the checkpoint does not record one.
  /// [status] The status of the checkpoint, such as `CHECKPOINT_AVAILABLE`.
  const GetMicrovmCheckpointsCheckpoint({
    required this.createdAt,
    required this.diskBytes,
    required this.id,
    required this.memoryBytes,
    required this.microvmId,
    required this.microvmName,
    required this.name,
    required this.region,
    required this.sizes,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'diskBytes': diskBytes,
      'id': id,
      'memoryBytes': memoryBytes,
      'microvmId': microvmId,
      'microvmName': microvmName,
      'name': name,
      'region': region,
      'sizes': pulumi.Input.mapInputValue<List<GetMicrovmCheckpointsCheckpointSize>, List<Map<String, dynamic>>>(sizes, (value) => pulumi.Input.encodeList<GetMicrovmCheckpointsCheckpointSize, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
    };
  }

  factory GetMicrovmCheckpointsCheckpoint.fromMap(Map<String, dynamic> map) {
    return GetMicrovmCheckpointsCheckpoint(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      diskBytes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['diskBytes'])),
      id: pulumi.Input.fromValue(map['id'] as String),
      memoryBytes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['memoryBytes'])),
      microvmId: pulumi.Input.fromValue(map['microvmId'] as String),
      microvmName: pulumi.Input.fromValue(map['microvmName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      sizes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMicrovmCheckpointsCheckpointSize>(map['sizes']!, (value) => GetMicrovmCheckpointsCheckpointSize.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
