// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalystAgentPersonaTableColumn {
  /// The data type of the column. This should be a GoogleSQL data type.
  /// Parameterized types such as PROTO, ENUM, ARRAY, STRUCT&lt;...&gt;, and
  /// RANGE are not supported.
  final pulumi.Input<String> dataType;
  /// The description of the column.
  final pulumi.Input<String?>? description;
  /// Identifier. The resource name of the analyst agent persona.
  /// Format:
  /// projects/{project}/locations/{location}/analystAgentPersonas/{analyst_agent_persona}
  final pulumi.Input<String> name;

  /// Creates a new [AnalystAgentPersonaTableColumn].
  /// [dataType] The data type of the column. This should be a GoogleSQL data type.
  /// [description] The description of the column.
  /// [name] Identifier. The resource name of the analyst agent persona.
  const AnalystAgentPersonaTableColumn({
    required this.dataType,
    this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'description': ?description,
      'name': name,
    };
  }

  factory AnalystAgentPersonaTableColumn.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaTableColumn(
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
