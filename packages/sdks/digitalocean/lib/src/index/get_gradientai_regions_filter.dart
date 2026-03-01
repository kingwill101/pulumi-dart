// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiRegionsFilter {
  final bool? all;
  final String key;
  final String? matchBy;
  final List<String> values;

  /// Creates a new [GetGradientaiRegionsFilter].
  /// [all] Optional.
  /// [key] Required.
  /// [matchBy] Optional.
  /// [values] Required.
  GetGradientaiRegionsFilter({
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

  factory GetGradientaiRegionsFilter.fromMap(Map<String, dynamic> map) {
    return GetGradientaiRegionsFilter(
      all: map['all'] == null ? null : map['all'] as bool,
      key: map['key'] as String,
      matchBy: map['matchBy'] == null ? null : map['matchBy'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

