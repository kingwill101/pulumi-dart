// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget.dart';

/// A basic layout divides the available space into vertical columns of equal width and arranges a list of widgets using a row-first strategy.
class GridLayout {
  /// The number of columns into which the view's width is divided. If omitted or set to zero, a system default will be used while rendering.
  final pulumi.Input<String>? columns;
  /// The informational elements that are arranged into the columns row-first.
  final pulumi.Input<List<Widget>>? widgets;

  /// Creates a new [GridLayout].
  /// [columns] The number of columns into which the view's width is divided. If omitted or set to zero, a system default will be used while rendering.
  /// [widgets] The informational elements that are arranged into the columns row-first.
  GridLayout({
    this.columns,
    this.widgets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
      'widgets': ?pulumi.Input.mapOptionalInputValue<List<Widget>, List<Map<String, dynamic>>>(widgets, (value) => pulumi.Input.encodeList<Widget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GridLayout.fromMap(Map<String, dynamic> map) {
    return GridLayout(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      widgets: (() { final guardedValue = map['widgets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Widget>(guardedValue, (value) => Widget.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

