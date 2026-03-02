// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_response.dart';

/// Defines the layout properties and content for a column.
class ColumnResponse {
  /// The relative weight of this column. The column weight is used to adjust the width of columns on the screen (relative to peers). Greater the weight, greater the width of the column on the screen. If omitted, a value of 1 is used while rendering.
  final pulumi.Input<String> weight;
  /// The display widgets arranged vertically in this column.
  final pulumi.Input<List<WidgetResponse>> widgets;

  /// Creates a new [ColumnResponse].
  /// [weight] The relative weight of this column. The column weight is used to adjust the width of columns on the screen (relative to peers). Greater the weight, greater the width of the column on the screen. If omitted, a value of 1 is used while rendering.
  /// [widgets] The display widgets arranged vertically in this column.
  ColumnResponse({
    required this.weight,
    required this.widgets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weight': weight,
      'widgets': pulumi.Input.mapInputValue<List<WidgetResponse>, List<Map<String, dynamic>>>(widgets, (value) => pulumi.Input.encodeList<WidgetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ColumnResponse.fromMap(Map<String, dynamic> map) {
    return ColumnResponse(
      weight: (map['weight'] as String).input(),
      widgets: (pulumi.Input.decodeList<WidgetResponse>(map['widgets'], (value) => WidgetResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

