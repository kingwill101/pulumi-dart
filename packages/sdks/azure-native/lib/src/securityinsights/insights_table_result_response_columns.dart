// ignore_for_file: unused_element, unnecessary_cast


class InsightsTableResultResponseColumns {
  /// the name of the column
  final String? name;
  /// the type of the column
  final String? type;

  /// Creates a new [InsightsTableResultResponseColumns].
  /// [name] the name of the column
  /// [type] the type of the column
  InsightsTableResultResponseColumns({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory InsightsTableResultResponseColumns.fromMap(Map<String, dynamic> map) {
    return InsightsTableResultResponseColumns(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

