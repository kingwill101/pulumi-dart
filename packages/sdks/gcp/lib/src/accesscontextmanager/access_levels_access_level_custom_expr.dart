// ignore_for_file: unused_element, unnecessary_cast


class AccessLevelsAccessLevelCustomExpr {
  /// Description of the expression
  final String? description;
  /// Textual representation of an expression in Common Expression Language syntax.
  final String expression;
  /// String indicating the location of the expression for error reporting, e.g. a file name and a position in the file
  final String? location;
  /// Title for the expression, i.e. a short string describing its purpose.
  final String? title;

  /// Creates a new [AccessLevelsAccessLevelCustomExpr].
  /// [description] Description of the expression
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [location] String indicating the location of the expression for error reporting, e.g. a file name and a position in the file
  /// [title] Title for the expression, i.e. a short string describing its purpose.
  AccessLevelsAccessLevelCustomExpr({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': expression,
      'location': ?location,
      'title': ?title,
    };
  }

  factory AccessLevelsAccessLevelCustomExpr.fromMap(Map<String, dynamic> map) {
    return AccessLevelsAccessLevelCustomExpr(
      description: map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

