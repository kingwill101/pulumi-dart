// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routine_argument_table_type.dart';

class RoutineArgument {
  /// Defaults to FIXED_TYPE.
  /// Default value is `FIXED_TYPE`.
  /// Possible values are: `FIXED_TYPE`, `ANY_TYPE`, `FIXED_TABLE`.
  final pulumi.Input<String>? argumentKind;
  /// A JSON schema for the data type. Required unless argumentKind = ANY_TYPE.
  /// ~&gt;**NOTE**: Because this field expects a JSON string, any changes to the string
  /// will create a diff, even if the JSON itself hasn't changed. If the API returns
  /// a different value for the same schema, e.g. it switched the order of values
  /// or replaced STRUCT field type with RECORD field type, we currently cannot
  /// suppress the recurring diff this causes. As a workaround, we recommend using
  /// the schema as returned by the API.
  final pulumi.Input<String>? dataType;
  /// Specifies whether the argument is input or output. Can be set for procedures only.
  /// Possible values are: `IN`, `OUT`, `INOUT`.
  final pulumi.Input<String>? mode;
  /// The name of this argument. Can be absent for function return argument.
  final pulumi.Input<String>? name;
  /// If argumentKind is FIXED_TABLE, a schema for the table type.
  /// Structure is documented below.
  final pulumi.Input<RoutineArgumentTableType>? tableType;

  /// Creates a new [RoutineArgument].
  /// [argumentKind] Defaults to FIXED_TYPE.
  /// [dataType] A JSON schema for the data type. Required unless argumentKind = ANY_TYPE.
  /// [mode] Specifies whether the argument is input or output. Can be set for procedures only.
  /// [name] The name of this argument. Can be absent for function return argument.
  /// [tableType] If argumentKind is FIXED_TABLE, a schema for the table type.
  const RoutineArgument({
    this.argumentKind,
    this.dataType,
    this.mode,
    this.name,
    this.tableType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argumentKind': ?argumentKind,
      'dataType': ?dataType,
      'mode': ?mode,
      'name': ?name,
      'tableType': ?pulumi.Input.mapOptionalInputValue<RoutineArgumentTableType, Map<String, dynamic>>(tableType, (value) => value.toMap()),
    };
  }

  factory RoutineArgument.fromMap(Map<String, dynamic> map) {
    return RoutineArgument(
      argumentKind: (() { final guardedValue = map['argumentKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableType: (() { final guardedValue = map['tableType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutineArgumentTableType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
