// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The persistent settings for a table's columns.
class ColumnSettings {
  /// The id of the column.
  final pulumi.Input<String> column;
  /// Whether the column should be visible on page load.
  final pulumi.Input<bool> visible;

  /// Creates a new [ColumnSettings].
  /// [column] The id of the column.
  /// [visible] Whether the column should be visible on page load.
  const ColumnSettings({
    required this.column,
    required this.visible,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'visible': visible,
    };
  }

  factory ColumnSettings.fromMap(Map<String, dynamic> map) {
    return ColumnSettings(
      column: pulumi.Input.fromValue(map['column'] as String),
      visible: pulumi.Input.fromValue(map['visible'] as bool),
    );
  }
}
