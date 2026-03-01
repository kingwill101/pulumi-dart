// ignore_for_file: unused_element, unnecessary_cast

import 'standard_sql_data_type_response.dart';

/// Input/output argument of a function or a stored procedure.
class ArgumentResponse {
  /// Optional. Defaults to FIXED_TYPE.
  final String argumentKind;
  /// Required unless argument_kind = ANY_TYPE.
  final StandardSqlDataTypeResponse dataType;
  /// Optional. Whether the argument is an aggregate function parameter. Must be Unset for routine types other than AGGREGATE_FUNCTION. For AGGREGATE_FUNCTION, if set to false, it is equivalent to adding "NOT AGGREGATE" clause in DDL; Otherwise, it is equivalent to omitting "NOT AGGREGATE" clause in DDL.
  final bool isAggregate;
  /// Optional. Specifies whether the argument is input or output. Can be set for procedures only.
  final String mode;
  /// Optional. The name of this argument. Can be absent for function return argument.
  final String name;

  /// Creates a new [ArgumentResponse].
  /// [argumentKind] Optional. Defaults to FIXED_TYPE.
  /// [dataType] Required unless argument_kind = ANY_TYPE.
  /// [isAggregate] Optional. Whether the argument is an aggregate function parameter. Must be Unset for routine types other than AGGREGATE_FUNCTION. For AGGREGATE_FUNCTION, if set to false, it is equivalent to adding "NOT AGGREGATE" clause in DDL; Otherwise, it is equivalent to omitting "NOT AGGREGATE" clause in DDL.
  /// [mode] Optional. Specifies whether the argument is input or output. Can be set for procedures only.
  /// [name] Optional. The name of this argument. Can be absent for function return argument.
  ArgumentResponse({
    required this.argumentKind,
    required this.dataType,
    required this.isAggregate,
    required this.mode,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argumentKind': argumentKind,
      'dataType': dataType.toMap(),
      'isAggregate': isAggregate,
      'mode': mode,
      'name': name,
    };
  }

  factory ArgumentResponse.fromMap(Map<String, dynamic> map) {
    return ArgumentResponse(
      argumentKind: map['argumentKind'] as String,
      dataType: StandardSqlDataTypeResponse.fromMap((map['dataType'] as Map).cast<String, dynamic>()),
      isAggregate: map['isAggregate'] as bool,
      mode: map['mode'] as String,
      name: map['name'] as String,
    );
  }
}

