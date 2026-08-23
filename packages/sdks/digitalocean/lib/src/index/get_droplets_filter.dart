// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDropletsFilter {
  /// Set to `true` to require that a field match all of the `values` instead of just one or more of
  /// them. This is useful when matching against multi-valued fields such as lists or sets where you want to ensure
  /// that all of the `values` are present in the list or set.
  final pulumi.Input<bool>? all;
  /// Filter the Droplets by this key. This may be one of `backups`, `createdAt`, `disk`, `id`,
  /// `image`, `ipv4Address`, `ipv4AddressPrivate`, `ipv6`, `ipv6Address`, `ipv6AddressPrivate`, `locked`,
  /// `memory`, `monitoring`, `name`, `priceHourly`, `priceMonthly`, `privateNetworking`, `region`, `size`,
  /// `status`, `tags`, `urn`, `vcpus`, `volumeIds`, or `vpcUuid`.
  final pulumi.Input<String> key;
  /// One of `exact` (default), `re`, or `substring`. For string-typed fields, specify `re` to
  /// match by using the `values` as regular expressions, or specify `substring` to match by treating the `values` as
  /// substrings to find within the string field.
  final pulumi.Input<String>? matchBy;
  /// A list of values to match against the `key` field. Only retrieves Droplets
  /// where the `key` field takes on one or more of the values provided here.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetDropletsFilter].
  /// [all] Set to `true` to require that a field match all of the `values` instead of just one or more of
  /// [key] Filter the Droplets by this key. This may be one of `backups`, `createdAt`, `disk`, `id`,
  /// [matchBy] One of `exact` (default), `re`, or `substring`. For string-typed fields, specify `re` to
  /// [values] A list of values to match against the `key` field. Only retrieves Droplets
  const GetDropletsFilter({
    this.all,
    required this.key,
    this.matchBy,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'key': key,
      'matchBy': ?matchBy,
      'values': values,
    };
  }

  factory GetDropletsFilter.fromMap(Map<String, dynamic> map) {
    return GetDropletsFilter(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      matchBy: (() { final guardedValue = map['matchBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
