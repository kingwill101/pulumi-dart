// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentsSort {
  final String? direction;
  final String key;

  /// Creates a new [GetGradientaiAgentsSort].
  /// [direction] Optional.
  /// [key] Required.
  GetGradientaiAgentsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetGradientaiAgentsSort.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

