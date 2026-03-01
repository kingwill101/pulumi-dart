// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiModelsSort {
  final String? direction;
  final String key;

  /// Creates a new [GetGradientaiModelsSort].
  /// [direction] Optional.
  /// [key] Required.
  GetGradientaiModelsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetGradientaiModelsSort.fromMap(Map<String, dynamic> map) {
    return GetGradientaiModelsSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

