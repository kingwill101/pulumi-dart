// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleNrtEntityMappingFieldMapping {
  /// The column name to be mapped to the identifier.
  final pulumi.Input<String> columnName;
  /// The identifier of the entity.
  final pulumi.Input<String> identifier;

  /// Creates a new [AlertRuleNrtEntityMappingFieldMapping].
  /// [columnName] The column name to be mapped to the identifier.
  /// [identifier] The identifier of the entity.
  AlertRuleNrtEntityMappingFieldMapping({
    required this.columnName,
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'identifier': identifier,
    };
  }

  factory AlertRuleNrtEntityMappingFieldMapping.fromMap(Map<String, dynamic> map) {
    return AlertRuleNrtEntityMappingFieldMapping(
      columnName: pulumi.Input.fromValue(map['columnName'] as String),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
    );
  }
}

