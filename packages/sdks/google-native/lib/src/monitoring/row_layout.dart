// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'row.dart';

/// A simplified layout that divides the available space into rows and arranges a set of widgets horizontally in each row.
class RowLayout {
  /// The rows of content to display.
  final pulumi.Input<List<Row>>? rows;

  /// Creates a new [RowLayout].
  /// [rows] The rows of content to display.
  RowLayout({this.rows});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rows':
          ?pulumi.Input.mapOptionalInputValue<
            List<Row>,
            List<Map<String, dynamic>>
          >(
            rows,
            (value) => pulumi.Input.encodeList<Row, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory RowLayout.fromMap(Map<String, dynamic> map) {
    return RowLayout(
      rows: (() {
        final guardedValue = map['rows'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Row>(
            guardedValue,
            (value) => Row.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
