// ignore_for_file: unused_element, unnecessary_cast


/// Table column.
class Column {
  /// Column data type logical hint.
  final String? dataTypeHint;
  /// Column description.
  final String? description;
  /// Column display name.
  final String? displayName;
  /// Column name.
  final String? name;
  /// Column data type.
  final String? type;

  /// Creates a new [Column].
  /// [dataTypeHint] Column data type logical hint.
  /// [description] Column description.
  /// [displayName] Column display name.
  /// [name] Column name.
  /// [type] Column data type.
  Column({
    this.dataTypeHint,
    this.description,
    this.displayName,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTypeHint': ?dataTypeHint,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'type': ?type,
    };
  }

  factory Column.fromMap(Map<String, dynamic> map) {
    return Column(
      dataTypeHint: map['dataTypeHint'] == null ? null : map['dataTypeHint'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

