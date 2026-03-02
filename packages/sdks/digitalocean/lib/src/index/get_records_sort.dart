// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRecordsSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String>? direction;
  /// Sort the DNS records by this key. This may be one of `domain`, `flags`, `name`, `port`,
  /// `priority`, `tag`, `ttl`, `type`, `value`, or `weight`.
  final pulumi.Input<String> key;

  /// Creates a new [GetRecordsSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the DNS records by this key. This may be one of `domain`, `flags`, `name`, `port`,
  GetRecordsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetRecordsSort.fromMap(Map<String, dynamic> map) {
    return GetRecordsSort(
      direction: map['direction'] == null ? null : (map['direction'] as String).input(),
      key: (map['key'] as String).input(),
    );
  }
}

