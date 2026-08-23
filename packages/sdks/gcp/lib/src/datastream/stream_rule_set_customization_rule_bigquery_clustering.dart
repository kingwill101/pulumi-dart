// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamRuleSetCustomizationRuleBigqueryClustering {
  /// Column names to set as clustering columns.
  final pulumi.Input<List<String>> columns;

  /// Creates a new [StreamRuleSetCustomizationRuleBigqueryClustering].
  /// [columns] Column names to set as clustering columns.
  const StreamRuleSetCustomizationRuleBigqueryClustering({
    required this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': columns,
    };
  }

  factory StreamRuleSetCustomizationRuleBigqueryClustering.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetCustomizationRuleBigqueryClustering(
      columns: pulumi.Input.fromValue((map['columns'] as List).cast<String>()),
    );
  }
}
