// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tile.dart';

/// A mosaic layout divides the available space into a grid of blocks, and overlays the grid with tiles. Unlike GridLayout, tiles may span multiple grid blocks and can be placed at arbitrary locations in the grid.
class MosaicLayout {
  /// The number of columns in the mosaic grid. The number of columns must be between 1 and 12, inclusive.
  final int? columns;
  /// The tiles to display.
  final List<Tile>? tiles;

  /// Creates a new [MosaicLayout].
  /// [columns] The number of columns in the mosaic grid. The number of columns must be between 1 and 12, inclusive.
  /// [tiles] The tiles to display.
  MosaicLayout({
    this.columns,
    this.tiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
      'tiles': ?tiles == null ? null : pulumi.Input.encodeList<Tile, Map<String, dynamic>>(tiles!, (value) => value.toMap()),
    };
  }

  factory MosaicLayout.fromMap(Map<String, dynamic> map) {
    return MosaicLayout(
      columns: map['columns'] == null ? null : map['columns'] as int,
      tiles: map['tiles'] == null ? null : pulumi.Input.decodeList<Tile>(map['tiles'], (value) => Tile.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

