// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMicrovmCheckpointsSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String?>? direction;
  /// Sort the checkpoints by this key. This may be one of `id`,
  /// `name`, `microvmId`, `microvmName`, `region`, `status`, `memoryBytes`,
  /// `diskBytes`, or `createdAt`.
  final pulumi.Input<String> key;

  /// Creates a new [GetMicrovmCheckpointsSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the checkpoints by this key. This may be one of `id`,
  const GetMicrovmCheckpointsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetMicrovmCheckpointsSort.fromMap(Map<String, dynamic> map) {
    return GetMicrovmCheckpointsSort(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
