// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier {
  /// The schema name.
  final pulumi.Input<String> schema;
  /// The table name.
  final pulumi.Input<String> table;

  /// Creates a new [StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier].
  /// [schema] The schema name.
  /// [table] The table name.
  const StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier({
    required this.schema,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': schema,
      'table': table,
    };
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier(
      schema: pulumi.Input.fromValue(map['schema'] as String),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}

