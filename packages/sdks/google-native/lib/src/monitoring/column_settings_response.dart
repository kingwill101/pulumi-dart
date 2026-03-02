// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The persistent settings for a table's columns.
class ColumnSettingsResponse {
  /// The id of the column.
  final pulumi.Input<String> column;
  /// Whether the column should be visible on page load.
  final pulumi.Input<bool> visible;

  /// Creates a new [ColumnSettingsResponse].
  /// [column] The id of the column.
  /// [visible] Whether the column should be visible on page load.
  ColumnSettingsResponse({
    required this.column,
    required this.visible,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'visible': visible,
    };
  }

  factory ColumnSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ColumnSettingsResponse(
      column: (map['column'] as String).input(),
      visible: (map['visible'] as bool).input(),
    );
  }
}

