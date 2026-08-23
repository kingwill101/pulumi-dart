// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectFeedCondition {
  /// Description of the expression. This is a longer text which describes the expression,
  /// e.g. when hovered over it in a UI.
  final pulumi.Input<String>? description;
  /// Textual representation of an expression in Common Expression Language syntax.
  final pulumi.Input<String> expression;
  /// String indicating the location of the expression for error reporting, e.g. a file
  /// name and a position in the file.
  final pulumi.Input<String>? location;
  /// Title for the expression, i.e. a short string describing its purpose.
  /// This can be used e.g. in UIs which allow to enter the expression.
  final pulumi.Input<String>? title;

  /// Creates a new [ProjectFeedCondition].
  /// [description] Description of the expression. This is a longer text which describes the expression,
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [location] String indicating the location of the expression for error reporting, e.g. a file
  /// [title] Title for the expression, i.e. a short string describing its purpose.
  const ProjectFeedCondition({
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

  factory ProjectFeedCondition.fromMap(Map<String, dynamic> map) {
    return ProjectFeedCondition(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
