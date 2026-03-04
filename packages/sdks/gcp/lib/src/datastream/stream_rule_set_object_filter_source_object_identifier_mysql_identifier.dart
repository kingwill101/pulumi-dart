// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier {
  /// The database name.
  final pulumi.Input<String> database;

  /// The table name.
  final pulumi.Input<String> table;

  /// Creates a new [StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier].
  /// [database] The database name.
  /// [table] The table name.
  StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier({
    required this.database,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'database': database, 'table': table};
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier(
      database: pulumi.Input.fromValue(map['database'] as String),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}
