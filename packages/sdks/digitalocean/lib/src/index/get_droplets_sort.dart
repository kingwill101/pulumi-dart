// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDropletsSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String>? direction;
  /// Sort the Droplets by this key. This may be one of `backups`, `createdAt`, `disk`, `id`,
  /// `image`, `ipv4Address`, `ipv4AddressPrivate`, `ipv6`, `ipv6Address`, `ipv6AddressPrivate`, `locked`,
  /// `memory`, `monitoring`, `name`, `priceHourly`, `priceMonthly`, `privateNetworking`, `region`, `size`,
  /// `status`, `urn`, `vcpus`, or `vpcUuid`.
  final pulumi.Input<String> key;

  /// Creates a new [GetDropletsSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the Droplets by this key. This may be one of `backups`, `createdAt`, `disk`, `id`,
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
