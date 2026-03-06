// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleScheduledEntityMappingFieldMapping {
  /// The column name to be mapped to the identifier.
  final pulumi.Input<String> columnName;
  /// The identifier of the entity.
  final pulumi.Input<String> identifier;

  /// Creates a new [AlertRuleScheduledEntityMappingFieldMapping].
  /// [columnName] The column name to be mapped to the identifier.
  /// [identifier] The identifier of the entity.
  const AlertRuleScheduledEntityMappingFieldMapping({
    required this.columnName,
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'identifier': identifier,
    };
  }

  factory AlertRuleScheduledEntityMappingFieldMapping.fromMap(Map<String, dynamic> map) {
    return AlertRuleScheduledEntityMappingFieldMapping(
      columnName: pulumi.Input.fromValue(map['columnName'] as String),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
    );
  }
}

