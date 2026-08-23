// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget.dart';

/// Defines the layout properties and content for a row.
class Row {
  /// The relative weight of this row. The row weight is used to adjust the height of rows on the screen (relative to peers). Greater the weight, greater the height of the row on the screen. If omitted, a value of 1 is used while rendering.
  final pulumi.Input<String>? weight;
  /// The display widgets arranged horizontally in this row.
  final pulumi.Input<List<Widget>>? widgets;

  /// Creates a new [Row].
  /// [weight] The relative weight of this row. The row weight is used to adjust the height of rows on the screen (relative to peers). Greater the weight, greater the height of the row on the screen. If omitted, a value of 1 is used while rendering.
  /// [widgets] The display widgets arranged horizontally in this row.
  const Row({
    this.weight,
    this.widgets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weight': ?weight,
      'widgets': ?pulumi.Input.mapOptionalInputValue<List<Widget>, List<Map<String, dynamic>>>(widgets, (value) => pulumi.Input.encodeList<Widget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Row.fromMap(Map<String, dynamic> map) {
    return Row(
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      widgets: (() { final guardedValue = map['widgets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Widget>(guardedValue, (value) => Widget.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
