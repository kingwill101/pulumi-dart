// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedInferenceAcceleratorsSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String>? direction;
  /// Sort the accelerators by this key. This may be one of the keys listed in `filter`.
  final pulumi.Input<String> key;

  /// Creates a new [GetDedicatedInferenceAcceleratorsSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the accelerators by this key. This may be one of the keys listed in `filter`.
  const GetDedicatedInferenceAcceleratorsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetDedicatedInferenceAcceleratorsSort.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceAcceleratorsSort(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
