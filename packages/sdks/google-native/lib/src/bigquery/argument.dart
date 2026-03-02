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
      'argumentKind': ?pulumi.Input.mapOptionalInputValue<ArgumentArgumentKind, String>(argumentKind, (value) => value.value),
      'dataType': ?pulumi.Input.mapOptionalInputValue<StandardSqlDataType, Map<String, dynamic>>(dataType, (value) => value.toMap()),
      'isAggregate': ?isAggregate,
      'mode': ?pulumi.Input.mapOptionalInputValue<ArgumentMode, String>(mode, (value) => value.value),
      'name': ?name,
    };
  }

  factory Argument.fromMap(Map<String, dynamic> map) {
    return Argument(
      argumentKind: map['argumentKind'] == null ? null : (ArgumentArgumentKind.fromValue(map['argumentKind']! as String)).input(),
      dataType: map['dataType'] == null ? null : (StandardSqlDataType.fromMap((map['dataType']! as Map).cast<String, dynamic>())).input(),
      isAggregate: map['isAggregate'] == null ? null : (map['isAggregate']! as bool).input(),
      mode: map['mode'] == null ? null : (ArgumentMode.fromValue(map['mode']! as String)).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

