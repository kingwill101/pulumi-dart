// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateTemplateIdentityConstraintsCelExpression {
  /// Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  final pulumi.Input<String>? description;
  /// Textual representation of an expression in Common Expression Language syntax.
  final pulumi.Input<String>? expression;
  /// Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
  final pulumi.Input<String>? location;
  /// Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
  final pulumi.Input<String>? title;

  /// Creates a new [CertificateTemplateIdentityConstraintsCelExpression].
  /// [description] Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [location] Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
  /// [title] Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
  CertificateTemplateIdentityConstraintsCelExpression({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': ?expression,
      'location': ?location,
      'title': ?title,
    };
  }

  factory CertificateTemplateIdentityConstraintsCelExpression.fromMap(Map<String, dynamic> map) {
    return CertificateTemplateIdentityConstraintsCelExpression(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      expression: map['expression'] == null ? null : (map['expression'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
    );
  }
}

