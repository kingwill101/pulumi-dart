// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options to configure rule type SourceSqlChange. The rule is used to alter the sql code for database entities. The rule filter field can refer to one entity. The rule scope can be: StoredProcedure, Function, Trigger, View
class SourceSqlChange {
  /// Sql code for source (stored procedure, function, trigger or view)
  final pulumi.Input<String> sqlCode;

  /// Creates a new [SourceSqlChange].
  /// [sqlCode] Sql code for source (stored procedure, function, trigger or view)
  const SourceSqlChange({
    required this.sqlCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sqlCode': sqlCode,
    };
  }

  factory SourceSqlChange.fromMap(Map<String, dynamic> map) {
    return SourceSqlChange(
      sqlCode: pulumi.Input.fromValue(map['sqlCode'] as String),
    );
  }
}
