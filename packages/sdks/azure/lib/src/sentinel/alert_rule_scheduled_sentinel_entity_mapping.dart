// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleScheduledSentinelEntityMapping {
  /// The column name to be mapped to the identifier.
  final pulumi.Input<String> columnName;

  /// Creates a new [AlertRuleScheduledSentinelEntityMapping].
  /// [columnName] The column name to be mapped to the identifier.
  AlertRuleScheduledSentinelEntityMapping({
    required this.columnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
    };
  }

  factory AlertRuleScheduledSentinelEntityMapping.fromMap(Map<String, dynamic> map) {
    return AlertRuleScheduledSentinelEntityMapping(
      columnName: pulumi.Input.fromValue(map['columnName'] as String),
    );
  }
}

