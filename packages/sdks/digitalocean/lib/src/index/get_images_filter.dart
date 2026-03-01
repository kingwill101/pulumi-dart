// ignore_for_file: unused_element, unnecessary_cast


class GetImagesFilter {
  /// Set to `true` to require that a field match all of the `values` instead of just one or more of
  /// them. This is useful when matching against multi-valued fields such as lists or sets where you want to ensure
  /// that all of the `values` are present in the list or set.
  final bool? all;
  /// Filter the images by this key. This may be one of `distribution`, `error_message`,
  /// `id`, `image`, `min_disk_size`, `name`, `private`, `regions`, `size_gigabytes`, `slug`, `status`,
  /// `tags`, or `type`.
  final String key;
  /// One of `exact` (default), `re`, or `substring`. For string-typed fields, specify `re` to
  /// match by using the `values` as regular expressions, or specify `substring` to match by treating the `values` as
  /// substrings to find within the string field.
  final String? matchBy;
  /// A list of values to match against the `key` field. Only retrieves images
  /// where the `key` field takes on one or more of the values provided here.
  final List<String> values;

  /// Creates a new [GetImagesFilter].
  /// [all] Set to `true` to require that a field match all of the `values` instead of just one or more of
  /// [key] Filter the images by this key. This may be one of `distribution`, `error_message`,
  /// [matchBy] One of `exact` (default), `re`, or `substring`. For string-typed fields, specify `re` to
  /// [values] A list of values to match against the `key` field. Only retrieves images
  GetImagesFilter({
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

  factory GetImagesFilter.fromMap(Map<String, dynamic> map) {
    return GetImagesFilter(
      all: map['all'] == null ? null : map['all'] as bool,
      key: map['key'] as String,
      matchBy: map['matchBy'] == null ? null : map['matchBy'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

