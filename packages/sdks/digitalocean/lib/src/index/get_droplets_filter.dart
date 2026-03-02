// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDropletsFilter {
  /// Set to `true` to require that a field match all of the `values` instead of just one or more of
  /// them. This is useful when matching against multi-valued fields such as lists or sets where you want to ensure
  /// that all of the `values` are present in the list or set.
  final pulumi.Input<bool>? all;
  /// Filter the Droplets by this key. This may be one of `backups`, `created_at`, `disk`, `id`,
  /// `image`, `ipv4_address`, `ipv4_address_private`, `ipv6`, `ipv6_address`, `ipv6_address_private`, `locked`,
  /// `memory`, `monitoring`, `name`, `price_hourly`, `price_monthly`, `private_networking`, `region`, `size`,
  /// `status`, `tags`, `urn`, `vcpus`, `volume_ids`, or `vpc_uuid`.
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
  /// [key] Filter the Droplets by this key. This may be one of `backups`, `created_at`, `disk`, `id`,
  /// [matchBy] One of `exact` (default), `re`, or `substring`. For string-typed fields, specify `re` to
  /// [values] A list of values to match against the `key` field. Only retrieves Droplets
  GetDropletsFilter({
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
      all: map['all'] == null ? null : (map['all']! as bool).input(),
      key: (map['key'] as String).input(),
      matchBy: map['matchBy'] == null ? null : (map['matchBy']! as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

