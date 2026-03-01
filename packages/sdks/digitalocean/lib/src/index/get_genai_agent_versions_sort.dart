// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentVersionsSort {
  final String? direction;
  final String key;

  /// Creates a new [GetGenaiAgentVersionsSort].
  /// [direction] Optional.
  /// [key] Required.
  GetGenaiAgentVersionsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetGenaiAgentVersionsSort.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

