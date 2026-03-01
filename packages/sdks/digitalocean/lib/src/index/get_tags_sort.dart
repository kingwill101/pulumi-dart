// ignore_for_file: unused_element, unnecessary_cast


class GetTagsSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final String? direction;
  /// Sort the tags by this key. This may be one of `name`, `total_resource_count`,  `droplets_count`, `images_count`, `volumes_count`, `volume_snapshots_count`, or `databases_count`.
  final String key;

  /// Creates a new [GetTagsSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the tags by this key. This may be one of `name`, `total_resource_count`,  `droplets_count`, `images_count`, `volumes_count`, `volume_snapshots_count`, or `databases_count`.
  GetTagsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetTagsSort.fromMap(Map<String, dynamic> map) {
    return GetTagsSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

