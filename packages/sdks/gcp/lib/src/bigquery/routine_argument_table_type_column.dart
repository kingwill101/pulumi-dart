// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutineArgumentTableTypeColumn {
  /// The name of the column.
  final pulumi.Input<String>? name;
  /// A JSON schema for the data type of the column. Required unless argumentKind = ANY_TYPE.
  /// ~&gt;**NOTE**: Because this field expects a JSON string, any changes to the string
  /// will create a diff, even if the JSON itself hasn't changed. If the API returns
  /// a different value for the same schema, e.g. it switched the order of values
  /// or replaced STRUCT field type with RECORD field type, we currently cannot
  /// suppress the recurring diff this causes. As a workaround, we recommend using
  /// the schema as returned by the API.
  final pulumi.Input<String>? type;

  /// Creates a new [RoutineArgumentTableTypeColumn].
  /// [name] The name of the column.
  /// [type] A JSON schema for the data type of the column. Required unless argumentKind = ANY_TYPE.
  const RoutineArgumentTableTypeColumn({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory RoutineArgumentTableTypeColumn.fromMap(Map<String, dynamic> map) {
    return RoutineArgumentTableTypeColumn(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
