// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column.dart';

/// A simplified layout that divides the available space into vertical columns and arranges a set of widgets vertically in each column.
class ColumnLayout {
  /// The columns of content to display.
  final pulumi.Input<List<Column>>? columns;

  /// Creates a new [ColumnLayout].
  /// [columns] The columns of content to display.
  ColumnLayout({this.columns});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns':
          ?pulumi.Input.mapOptionalInputValue<
            List<Column>,
            List<Map<String, dynamic>>
          >(
            columns,
            (value) => pulumi.Input.encodeList<Column, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory ColumnLayout.fromMap(Map<String, dynamic> map) {
    return ColumnLayout(
      columns: (() {
        final guardedValue = map['columns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Column>(
            guardedValue,
            (value) => Column.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
