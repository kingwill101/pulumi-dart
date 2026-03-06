// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_response.dart';

/// Defines the layout properties and content for a row.
class RowResponse {
  /// The relative weight of this row. The row weight is used to adjust the height of rows on the screen (relative to peers). Greater the weight, greater the height of the row on the screen. If omitted, a value of 1 is used while rendering.
  final pulumi.Input<String> weight;
  /// The display widgets arranged horizontally in this row.
  final pulumi.Input<List<WidgetResponse>> widgets;

  /// Creates a new [RowResponse].
  /// [weight] The relative weight of this row. The row weight is used to adjust the height of rows on the screen (relative to peers). Greater the weight, greater the height of the row on the screen. If omitted, a value of 1 is used while rendering.
  /// [widgets] The display widgets arranged horizontally in this row.
  const RowResponse({
    required this.weight,
    required this.widgets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weight': weight,
      'widgets': pulumi.Input.mapInputValue<List<WidgetResponse>, List<Map<String, dynamic>>>(widgets, (value) => pulumi.Input.encodeList<WidgetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RowResponse.fromMap(Map<String, dynamic> map) {
    return RowResponse(
      weight: pulumi.Input.fromValue(map['weight'] as String),
      widgets: pulumi.Input.fromValue(pulumi.Input.decodeList<WidgetResponse>(map['widgets']!, (value) => WidgetResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

