// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardRawPageWidget {
  /// (Required) Column position of widget from top left, starting at `1`.
  final pulumi.Input<int> column;

  /// (Required) The configuration of the widget.
  final pulumi.Input<String> configuration;

  /// (Optional) Height of the widget. Valid values are `1` to `12` inclusive. Defaults to `3`.
  final pulumi.Input<int>? height;

  /// The ID of the widget.
  final pulumi.Input<String>? id;

  /// (Optional) Related entity GUIDs.
  final pulumi.Input<List<String>>? linkedEntityGuids;

  /// (Required) Row position of widget from top left, starting at `1`.
  final pulumi.Input<int> row;

  /// (Required) A title for the widget.
  final pulumi.Input<String> title;

  /// (Required) The visualization ID of the widget
  final pulumi.Input<String> visualizationId;

  /// (Optional) Width of the widget. Valid values are `1` to `12` inclusive. Defaults to `4`.
  final pulumi.Input<int>? width;

  /// Creates a new [OneDashboardRawPageWidget].
  /// [column] (Required) Column position of widget from top left, starting at `1`.
  /// [configuration] (Required) The configuration of the widget.
  /// [height] (Optional) Height of the widget. Valid values are `1` to `12` inclusive. Defaults to `3`.
  /// [id] The ID of the widget.
  /// [linkedEntityGuids] (Optional) Related entity GUIDs.
  /// [row] (Required) Row position of widget from top left, starting at `1`.
  /// [title] (Required) A title for the widget.
  /// [visualizationId] (Required) The visualization ID of the widget
  /// [width] (Optional) Width of the widget. Valid values are `1` to `12` inclusive. Defaults to `4`.
  OneDashboardRawPageWidget({
    required this.column,
    required this.configuration,
    this.height,
    this.id,
    this.linkedEntityGuids,
    required this.row,
    required this.title,
    required this.visualizationId,
    this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'configuration': configuration,
      'height': ?height,
      'id': ?id,
      'linkedEntityGuids': ?linkedEntityGuids,
      'row': row,
      'title': title,
      'visualizationId': visualizationId,
      'width': ?width,
    };
  }

  factory OneDashboardRawPageWidget.fromMap(Map<String, dynamic> map) {
    return OneDashboardRawPageWidget(
      column: pulumi.Input.fromValue(map['column'] as int),
      configuration: pulumi.Input.fromValue(map['configuration'] as String),
      height: (() {
        final guardedValue = map['height'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkedEntityGuids: (() {
        final guardedValue = map['linkedEntityGuids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      row: pulumi.Input.fromValue(map['row'] as int),
      title: pulumi.Input.fromValue(map['title'] as String),
      visualizationId: pulumi.Input.fromValue(map['visualizationId'] as String),
      width: (() {
        final guardedValue = map['width'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
