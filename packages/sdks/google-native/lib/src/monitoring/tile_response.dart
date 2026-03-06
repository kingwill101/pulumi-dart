// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_response.dart';

/// A single tile in the mosaic. The placement and size of the tile are configurable.
class TileResponse {
  /// The height of the tile, measured in grid blocks. Tiles must have a minimum height of 1.
  final pulumi.Input<int> height;
  /// The informational widget contained in the tile. For example an XyChart.
  final pulumi.Input<WidgetResponse> widget;
  /// The width of the tile, measured in grid blocks. Tiles must have a minimum width of 1.
  final pulumi.Input<int> width;
  /// The zero-indexed position of the tile in grid blocks relative to the left edge of the grid. Tiles must be contained within the specified number of columns. x_pos cannot be negative.
  final pulumi.Input<int> xPos;
  /// The zero-indexed position of the tile in grid blocks relative to the top edge of the grid. y_pos cannot be negative.
  final pulumi.Input<int> yPos;

  /// Creates a new [TileResponse].
  /// [height] The height of the tile, measured in grid blocks. Tiles must have a minimum height of 1.
  /// [widget] The informational widget contained in the tile. For example an XyChart.
  /// [width] The width of the tile, measured in grid blocks. Tiles must have a minimum width of 1.
  /// [xPos] The zero-indexed position of the tile in grid blocks relative to the left edge of the grid. Tiles must be contained within the specified number of columns. x_pos cannot be negative.
  /// [yPos] The zero-indexed position of the tile in grid blocks relative to the top edge of the grid. y_pos cannot be negative.
  const TileResponse({
    required this.height,
    required this.widget,
    required this.width,
    required this.xPos,
    required this.yPos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': height,
      'widget': pulumi.Input.mapInputValue<WidgetResponse, Map<String, dynamic>>(widget, (value) => value.toMap()),
      'width': width,
      'xPos': xPos,
      'yPos': yPos,
    };
  }

  factory TileResponse.fromMap(Map<String, dynamic> map) {
    return TileResponse(
      height: pulumi.Input.fromValue(map['height'] as int),
      widget: pulumi.Input.fromValue(WidgetResponse.fromMap((map['widget']! as Map).cast<String, dynamic>())),
      width: pulumi.Input.fromValue(map['width'] as int),
      xPos: pulumi.Input.fromValue(map['xPos'] as int),
      yPos: pulumi.Input.fromValue(map['yPos'] as int),
    );
  }
}

