// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tile.dart';

/// A mosaic layout divides the available space into a grid of blocks, and overlays the grid with tiles. Unlike GridLayout, tiles may span multiple grid blocks and can be placed at arbitrary locations in the grid.
class MosaicLayout {
  /// The number of columns in the mosaic grid. The number of columns must be between 1 and 12, inclusive.
  final pulumi.Input<int>? columns;
  /// The tiles to display.
  final pulumi.Input<List<Tile>>? tiles;

  /// Creates a new [MosaicLayout].
  /// [columns] The number of columns in the mosaic grid. The number of columns must be between 1 and 12, inclusive.
  /// [tiles] The tiles to display.
  const MosaicLayout({
    this.columns,
    this.tiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
      'tiles': ?pulumi.Input.mapOptionalInputValue<List<Tile>, List<Map<String, dynamic>>>(tiles, (value) => pulumi.Input.encodeList<Tile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MosaicLayout.fromMap(Map<String, dynamic> map) {
    return MosaicLayout(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tiles: (() { final guardedValue = map['tiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tile>(guardedValue, (value) => Tile.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
