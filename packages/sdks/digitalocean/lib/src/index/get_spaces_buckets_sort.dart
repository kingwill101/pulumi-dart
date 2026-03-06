// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSpacesBucketsSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String>? direction;
  /// Sort the images by this key. This may be one of `bucket_domain_name`, `name`, `region`, or `urn`.
  final pulumi.Input<String> key;

  /// Creates a new [GetSpacesBucketsSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the images by this key. This may be one of `bucket_domain_name`, `name`, `region`, or `urn`.
  const GetSpacesBucketsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetSpacesBucketsSort.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketsSort(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}

