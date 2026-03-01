// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentsSort {
  final String? direction;
  final String key;

  /// Creates a new [GetGenaiAgentsSort].
  /// [direction] Optional.
  /// [key] Required.
  GetGenaiAgentsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetGenaiAgentsSort.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

