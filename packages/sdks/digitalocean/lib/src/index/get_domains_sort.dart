// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainsSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String>? direction;
  /// Sort the domains by this key. This may be one of `name`, `urn`, and `ttl`.
  final pulumi.Input<String> key;

  /// Creates a new [GetDomainsSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the domains by this key. This may be one of `name`, `urn`, and `ttl`.
  GetDomainsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetDomainsSort.fromMap(Map<String, dynamic> map) {
    return GetDomainsSort(
      direction: map['direction'] == null ? null : (map['direction']! as String).input(),
      key: (map['key'] as String).input(),
    );
  }
}

