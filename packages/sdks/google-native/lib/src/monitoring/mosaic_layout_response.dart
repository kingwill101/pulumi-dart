// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tile_response.dart';

/// A mosaic layout divides the available space into a grid of blocks, and overlays the grid with tiles. Unlike GridLayout, tiles may span multiple grid blocks and can be placed at arbitrary locations in the grid.
class MosaicLayoutResponse {
  /// The number of columns in the mosaic grid. The number of columns must be between 1 and 12, inclusive.
  final pulumi.Input<int> columns;

  /// The tiles to display.
  final pulumi.Input<List<TileResponse>> tiles;

  /// Creates a new [MosaicLayoutResponse].
  /// [columns] The number of columns in the mosaic grid. The number of columns must be between 1 and 12, inclusive.
  /// [tiles] The tiles to display.
  MosaicLayoutResponse({required this.columns, required this.tiles});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': columns,
      'tiles':
          pulumi.Input.mapInputValue<
            List<TileResponse>,
            List<Map<String, dynamic>>
          >(
            tiles,
            (value) =>
                pulumi.Input.encodeList<TileResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory MosaicLayoutResponse.fromMap(Map<String, dynamic> map) {
    return MosaicLayoutResponse(
      columns: pulumi.Input.fromValue(map['columns'] as int),
      tiles: pulumi.Input.fromValue(
        pulumi.Input.decodeList<TileResponse>(
          map['tiles']!,
          (value) =>
              TileResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
    );
  }
}
