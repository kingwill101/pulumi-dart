// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_table_column.dart';

class AnalystAgentPersonaTable {
  /// The columns in the table.
  final pulumi.Input<List<AnalystAgentPersonaTableColumn>>? columns;
  /// The description of the table.
  final pulumi.Input<String>? description;
  /// Identifier. The resource name of the analyst agent persona.
  /// Format:
  /// projects/{project}/locations/{location}/analystAgentPersonas/{analyst_agent_persona}
  final pulumi.Input<String> name;

  /// Creates a new [AnalystAgentPersonaTable].
  /// [columns] The columns in the table.
  /// [description] The description of the table.
  /// [name] Identifier. The resource name of the analyst agent persona.
  const AnalystAgentPersonaTable({
    this.columns,
    this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<AnalystAgentPersonaTableColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<AnalystAgentPersonaTableColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': name,
    };
  }

  factory AnalystAgentPersonaTable.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaTable(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnalystAgentPersonaTableColumn>(guardedValue, (value) => AnalystAgentPersonaTableColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
