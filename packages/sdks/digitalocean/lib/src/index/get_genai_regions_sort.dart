// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiRegionsSort {
  final String? direction;
  final String key;

  /// Creates a new [GetGenaiRegionsSort].
  /// [direction] Optional.
  /// [key] Required.
  GetGenaiRegionsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetGenaiRegionsSort.fromMap(Map<String, dynamic> map) {
    return GetGenaiRegionsSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

