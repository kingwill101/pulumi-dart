// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationSettingsTransactionTracerSql {
  /// The level of SQL recording. Valid values ar `OBFUSCATED`,`OFF`,`RAW` (Mandatory attribute when `sql` block is provided).
  final pulumi.Input<String> recordSql;

  /// Creates a new [ApplicationSettingsTransactionTracerSql].
  /// [recordSql] The level of SQL recording. Valid values ar `OBFUSCATED`,`OFF`,`RAW` (Mandatory attribute when `sql` block is provided).
  ApplicationSettingsTransactionTracerSql({required this.recordSql});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'recordSql': recordSql};
  }

  factory ApplicationSettingsTransactionTracerSql.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationSettingsTransactionTracerSql(
      recordSql: pulumi.Input.fromValue(map['recordSql'] as String),
    );
  }
}
