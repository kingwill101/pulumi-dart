// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTagsFilter {
  /// Set to `true` to require that a field match all of the `values` instead of just one or more of
  /// them. This is useful when matching against multi-valued fields such as lists or sets where you want to ensure
  /// that all of the `values` are present in the list or set.
  final pulumi.Input<bool>? all;
  /// Filter the tags by this key. This may be one of `name`, `total_resource_count`,  `droplets_count`, `images_count`, `volumes_count`, `volume_snapshots_count`, or `databases_count`.
  final pulumi.Input<String> key;
  /// One of `exact` (default), `re`, or `substring`. For string-typed fields, specify `re` to
  /// match by using the `values` as regular expressions, or specify `substring` to match by treating the `values` as
  /// substrings to find within the string field.
  final pulumi.Input<String>? matchBy;
  /// Only retrieves tags which keys has value that matches
  /// one of the values provided here.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetTagsFilter].
  /// [all] Set to `true` to require that a field match all of the `values` instead of just one or more of
  /// [key] Filter the tags by this key. This may be one of `name`, `total_resource_count`,  `droplets_count`, `images_count`, `volumes_count`, `volume_snapshots_count`, or `databases_count`.
  /// [matchBy] One of `exact` (default), `re`, or `substring`. For string-typed fields, specify `re` to
  /// [values] Only retrieves tags which keys has value that matches
  GetTagsFilter({
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

  factory GetTagsFilter.fromMap(Map<String, dynamic> map) {
    return GetTagsFilter(
      all: map['all'] == null ? null : (map['all'] as bool).input(),
      key: (map['key'] as String).input(),
      matchBy: map['matchBy'] == null ? null : (map['matchBy'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

