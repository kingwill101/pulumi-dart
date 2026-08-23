// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataQualitySpecRuleSqlAssertion {
  /// The SQL statement.
  final pulumi.Input<String> sqlStatement;

  /// Creates a new [DatascanDataQualitySpecRuleSqlAssertion].
  /// [sqlStatement] The SQL statement.
  const DatascanDataQualitySpecRuleSqlAssertion({
    required this.sqlStatement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sqlStatement': sqlStatement,
    };
  }

  factory DatascanDataQualitySpecRuleSqlAssertion.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecRuleSqlAssertion(
      sqlStatement: pulumi.Input.fromValue(map['sqlStatement'] as String),
    );
  }
}
