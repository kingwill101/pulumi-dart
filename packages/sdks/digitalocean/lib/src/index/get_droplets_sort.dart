// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDropletsSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String>? direction;
  /// Sort the Droplets by this key. This may be one of `backups`, `created_at`, `disk`, `id`,
  /// `image`, `ipv4_address`, `ipv4_address_private`, `ipv6`, `ipv6_address`, `ipv6_address_private`, `locked`,
  /// `memory`, `monitoring`, `name`, `price_hourly`, `price_monthly`, `private_networking`, `region`, `size`,
  /// `status`, `urn`, `vcpus`, or `vpc_uuid`.
  final pulumi.Input<String> key;

  /// Creates a new [GetDropletsSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the Droplets by this key. This may be one of `backups`, `created_at`, `disk`, `id`,
  const GetDropletsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetDropletsSort.fromMap(Map<String, dynamic> map) {
    return GetDropletsSort(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}

