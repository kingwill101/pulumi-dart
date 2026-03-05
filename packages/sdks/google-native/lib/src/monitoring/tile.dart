// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget.dart';

/// A single tile in the mosaic. The placement and size of the tile are configurable.
class Tile {
  /// The height of the tile, measured in grid blocks. Tiles must have a minimum height of 1.
  final pulumi.Input<int>? height;
  /// The informational widget contained in the tile. For example an XyChart.
  final pulumi.Input<Widget>? widget;
  /// The width of the tile, measured in grid blocks. Tiles must have a minimum width of 1.
  final pulumi.Input<int>? width;
  /// The zero-indexed position of the tile in grid blocks relative to the left edge of the grid. Tiles must be contained within the specified number of columns. x_pos cannot be negative.
  final pulumi.Input<int>? xPos;
  /// The zero-indexed position of the tile in grid blocks relative to the top edge of the grid. y_pos cannot be negative.
  final pulumi.Input<int>? yPos;

  /// Creates a new [Tile].
  /// [height] The height of the tile, measured in grid blocks. Tiles must have a minimum height of 1.
  /// [widget] The informational widget contained in the tile. For example an XyChart.
  /// [width] The width of the tile, measured in grid blocks. Tiles must have a minimum width of 1.
  /// [xPos] The zero-indexed position of the tile in grid blocks relative to the left edge of the grid. Tiles must be contained within the specified number of columns. x_pos cannot be negative.
  /// [yPos] The zero-indexed position of the tile in grid blocks relative to the top edge of the grid. y_pos cannot be negative.
  Tile({
    this.height,
    this.widget,
    this.width,
    this.xPos,
    this.yPos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': ?height,
      'widget': ?pulumi.Input.mapOptionalInputValue<Widget, Map<String, dynamic>>(widget, (value) => value.toMap()),
      'width': ?width,
      'xPos': ?xPos,
      'yPos': ?yPos,
    };
  }

  factory Tile.fromMap(Map<String, dynamic> map) {
    return Tile(
      height: (() { final guardedValue = map['height']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      widget: (() { final guardedValue = map['widget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Widget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      width: (() { final guardedValue = map['width']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      xPos: (() { final guardedValue = map['xPos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      yPos: (() { final guardedValue = map['yPos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

