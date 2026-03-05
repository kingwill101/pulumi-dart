// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSizesSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String>? direction;
  /// Sort the sizes by this key. This may be one of `slug`,
  /// `memory`, `vcpus`, `disk`, `transfer`, `price_monthly`, or `price_hourly`.
  final pulumi.Input<String> key;

  /// Creates a new [GetSizesSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the sizes by this key. This may be one of `slug`,
  GetSizesSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetSizesSort.fromMap(Map<String, dynamic> map) {
    return GetSizesSort(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}

