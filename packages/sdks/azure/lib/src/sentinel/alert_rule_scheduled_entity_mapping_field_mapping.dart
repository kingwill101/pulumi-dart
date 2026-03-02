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
  AlertRuleScheduledEntityMappingFieldMapping({
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
      columnName: (map['columnName'] as String).input(),
      identifier: (map['identifier'] as String).input(),
    );
  }
}

