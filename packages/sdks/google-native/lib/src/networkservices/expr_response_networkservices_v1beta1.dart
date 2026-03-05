// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() &lt; 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.
class ExprResponseNetworkservicesV1beta1 {
  /// Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  final pulumi.Input<String> description;
  /// Textual representation of an expression in Common Expression Language syntax.
  final pulumi.Input<String> expression;
  /// Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
  final pulumi.Input<String> location;
  /// Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
  final pulumi.Input<String> title;

  /// Creates a new [ExprResponseNetworkservicesV1beta1].
  /// [description] Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [location] Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
  /// [title] Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
  ExprResponseNetworkservicesV1beta1({
    required this.description,
    required this.expression,
    required this.location,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'expression': expression,
      'location': location,
      'title': title,
    };
  }

  factory ExprResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return ExprResponseNetworkservicesV1beta1(
      description: pulumi.Input.fromValue(map['description'] as String),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

