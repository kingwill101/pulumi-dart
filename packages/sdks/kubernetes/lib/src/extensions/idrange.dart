// ignore_for_file: unused_element, unnecessary_cast


/// IDRange provides a min/max of an allowed range of IDs. Deprecated: use IDRange from policy API Group instead.
class IDRange {
  /// max is the end of the range, inclusive.
  final int max;
  /// min is the start of the range, inclusive.
  final int min;

  /// Creates a new [IDRange].
  /// [max] max is the end of the range, inclusive.
  /// [min] min is the start of the range, inclusive.
  IDRange({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory IDRange.fromMap(Map<String, dynamic> map) {
    return IDRange(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}

