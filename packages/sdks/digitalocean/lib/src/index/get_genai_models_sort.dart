// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiModelsSort {
  final String? direction;
  final String key;

  /// Creates a new [GetGenaiModelsSort].
  /// [direction] Optional.
  /// [key] Required.
  GetGenaiModelsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetGenaiModelsSort.fromMap(Map<String, dynamic> map) {
    return GetGenaiModelsSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

