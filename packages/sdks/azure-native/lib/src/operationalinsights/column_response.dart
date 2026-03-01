// ignore_for_file: unused_element, unnecessary_cast


/// Table column.
class ColumnResponse {
  /// Column data type logical hint.
  final String? dataTypeHint;
  /// Column description.
  final String? description;
  /// Column display name.
  final String? displayName;
  /// Is displayed by default.
  final bool isDefaultDisplay;
  /// Is column hidden.
  final bool isHidden;
  /// Column name.
  final String? name;
  /// Column data type.
  final String? type;

  /// Creates a new [ColumnResponse].
  /// [dataTypeHint] Column data type logical hint.
  /// [description] Column description.
  /// [displayName] Column display name.
  /// [isDefaultDisplay] Is displayed by default.
  /// [isHidden] Is column hidden.
  /// [name] Column name.
  /// [type] Column data type.
  ColumnResponse({
    this.dataTypeHint,
    this.description,
    this.displayName,
    required this.isDefaultDisplay,
    required this.isHidden,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTypeHint': ?dataTypeHint,
      'description': ?description,
      'displayName': ?displayName,
      'isDefaultDisplay': isDefaultDisplay,
      'isHidden': isHidden,
      'name': ?name,
      'type': ?type,
    };
  }

  factory ColumnResponse.fromMap(Map<String, dynamic> map) {
    return ColumnResponse(
      dataTypeHint: map['dataTypeHint'] == null ? null : map['dataTypeHint'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      isDefaultDisplay: map['isDefaultDisplay'] as bool,
      isHidden: map['isHidden'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

