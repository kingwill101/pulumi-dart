// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionsSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String>? direction;
  /// Sort the regions by this key. This may be one of `slug`,
  /// `name`, or `available`.
  final pulumi.Input<String> key;

  /// Creates a new [GetRegionsSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the regions by this key. This may be one of `slug`,
  GetRegionsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetRegionsSort.fromMap(Map<String, dynamic> map) {
    return GetRegionsSort(
      direction: map['direction'] == null ? null : (map['direction'] as String).input(),
      key: (map['key'] as String).input(),
    );
  }
}

