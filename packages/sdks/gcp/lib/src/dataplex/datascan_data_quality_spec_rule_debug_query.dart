// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataQualitySpecRuleDebugQuery {
  /// Specifies the description of the debug query.
  /// The maximum length is 1,024 characters.
  final pulumi.Input<String?>? description;
  /// Specifies the SQL statement to be executed.
  final pulumi.Input<String> sqlStatement;

  /// Creates a new [DatascanDataQualitySpecRuleDebugQuery].
  /// [description] Specifies the description of the debug query.
  /// [sqlStatement] Specifies the SQL statement to be executed.
  const DatascanDataQualitySpecRuleDebugQuery({
    this.description,
    required this.sqlStatement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'sqlStatement': sqlStatement,
    };
  }

  factory DatascanDataQualitySpecRuleDebugQuery.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecRuleDebugQuery(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlStatement: pulumi.Input.fromValue(map['sqlStatement'] as String),
    );
  }
}
