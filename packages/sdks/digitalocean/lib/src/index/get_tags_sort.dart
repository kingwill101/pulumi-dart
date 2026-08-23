// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTagsSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String>? direction;
  /// Sort the tags by this key. This may be one of `name`, `totalResourceCount`,  `dropletsCount`, `imagesCount`, `volumesCount`, `volumeSnapshotsCount`, or `databasesCount`.
  final pulumi.Input<String> key;

  /// Creates a new [GetTagsSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the tags by this key. This may be one of `name`, `totalResourceCount`,  `dropletsCount`, `imagesCount`, `volumesCount`, `volumeSnapshotsCount`, or `databasesCount`.
  const GetTagsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetTagsSort.fromMap(Map<String, dynamic> map) {
    return GetTagsSort(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
