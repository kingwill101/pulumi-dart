// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routine_argument_table_type_column.dart';

class RoutineArgumentTableType {
  /// The columns in the table type.
  /// Structure is documented below.
  final pulumi.Input<List<RoutineArgumentTableTypeColumn>?>? columns;

  /// Creates a new [RoutineArgumentTableType].
  /// [columns] The columns in the table type.
  const RoutineArgumentTableType({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<RoutineArgumentTableTypeColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<RoutineArgumentTableTypeColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RoutineArgumentTableType.fromMap(Map<String, dynamic> map) {
    return RoutineArgumentTableType(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoutineArgumentTableTypeColumn>(guardedValue, (value) => RoutineArgumentTableTypeColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
