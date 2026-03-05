// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'argument_argument_kind.dart';
import 'argument_mode.dart';
import 'standard_sql_data_type.dart';

/// Input/output argument of a function or a stored procedure.
class Argument {
  /// Optional. Defaults to FIXED_TYPE.
  final pulumi.Input<ArgumentArgumentKind>? argumentKind;
  /// Required unless argument_kind = ANY_TYPE.
  final pulumi.Input<StandardSqlDataType>? dataType;
  /// Optional. Whether the argument is an aggregate function parameter. Must be Unset for routine types other than AGGREGATE_FUNCTION. For AGGREGATE_FUNCTION, if set to false, it is equivalent to adding "NOT AGGREGATE" clause in DDL; Otherwise, it is equivalent to omitting "NOT AGGREGATE" clause in DDL.
  final pulumi.Input<bool>? isAggregate;
  /// Optional. Specifies whether the argument is input or output. Can be set for procedures only.
  final pulumi.Input<ArgumentMode>? mode;
  /// Optional. The name of this argument. Can be absent for function return argument.
  final pulumi.Input<String>? name;

  /// Creates a new [Argument].
  /// [argumentKind] Optional. Defaults to FIXED_TYPE.
  /// [dataType] Required unless argument_kind = ANY_TYPE.
  /// [isAggregate] Optional. Whether the argument is an aggregate function parameter. Must be Unset for routine types other than AGGREGATE_FUNCTION. For AGGREGATE_FUNCTION, if set to false, it is equivalent to adding "NOT AGGREGATE" clause in DDL; Otherwise, it is equivalent to omitting "NOT AGGREGATE" clause in DDL.
  /// [mode] Optional. Specifies whether the argument is input or output. Can be set for procedures only.
  /// [name] Optional. The name of this argument. Can be absent for function return argument.
  Argument({
    this.argumentKind,
    this.dataType,
    this.isAggregate,
    this.mode,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argumentKind': ?pulumi.Input.mapOptionalInputValue<ArgumentArgumentKind, String>(argumentKind, (value) => value.wireValue),
      'dataType': ?pulumi.Input.mapOptionalInputValue<StandardSqlDataType, Map<String, dynamic>>(dataType, (value) => value.toMap()),
      'isAggregate': ?isAggregate,
      'mode': ?pulumi.Input.mapOptionalInputValue<ArgumentMode, String>(mode, (value) => value.wireValue),
      'name': ?name,
    };
  }

  factory Argument.fromMap(Map<String, dynamic> map) {
    return Argument(
      argumentKind: (() { final guardedValue = map['argumentKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArgumentArgumentKind.fromValue(guardedValue as String)); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardSqlDataType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isAggregate: (() { final guardedValue = map['isAggregate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArgumentMode.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

