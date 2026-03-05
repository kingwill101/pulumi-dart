// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sprite sheet configuration.
class SpriteSheetResponse {
  /// The maximum number of sprites per row in a sprite sheet. The default is 0, which indicates no maximum limit.
  final pulumi.Input<int> columnCount;
  /// End time in seconds, relative to the output file timeline. When `end_time_offset` is not specified, the sprites are generated until the end of the output file.
  final pulumi.Input<String> endTimeOffset;
  /// File name prefix for the generated sprite sheets. Each sprite sheet has an incremental 10-digit zero-padded suffix starting from 0 before the extension, such as `sprite_sheet0000000123.jpeg`.
  final pulumi.Input<String> filePrefix;
  /// Format type. The default is `jpeg`. Supported formats: - `jpeg`
  final pulumi.Input<String> format;
  /// Starting from `0s`, create sprites at regular intervals. Specify the interval value in seconds.
  final pulumi.Input<String> interval;
  /// The quality of the generated sprite sheet. Enter a value between 1 and 100, where 1 is the lowest quality and 100 is the highest quality. The default is 100. A high quality value corresponds to a low image data compression ratio.
  final pulumi.Input<int> quality;
  /// The maximum number of rows per sprite sheet. When the sprite sheet is full, a new sprite sheet is created. The default is 0, which indicates no maximum limit.
  final pulumi.Input<int> rowCount;
  /// The height of sprite in pixels. Must be an even integer. To preserve the source aspect ratio, set the SpriteSheet.sprite_height_pixels field or the SpriteSheet.sprite_width_pixels field, but not both (the API will automatically calculate the missing field). For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  final pulumi.Input<int> spriteHeightPixels;
  /// The width of sprite in pixels. Must be an even integer. To preserve the source aspect ratio, set the SpriteSheet.sprite_width_pixels field or the SpriteSheet.sprite_height_pixels field, but not both (the API will automatically calculate the missing field). For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  final pulumi.Input<int> spriteWidthPixels;
  /// Start time in seconds, relative to the output file timeline. Determines the first sprite to pick. The default is `0s`.
  final pulumi.Input<String> startTimeOffset;
  /// Total number of sprites. Create the specified number of sprites distributed evenly across the timeline of the output media. The default is 100.
  final pulumi.Input<int> totalCount;

  /// Creates a new [SpriteSheetResponse].
  /// [columnCount] The maximum number of sprites per row in a sprite sheet. The default is 0, which indicates no maximum limit.
  /// [endTimeOffset] End time in seconds, relative to the output file timeline. When `end_time_offset` is not specified, the sprites are generated until the end of the output file.
  /// [filePrefix] File name prefix for the generated sprite sheets. Each sprite sheet has an incremental 10-digit zero-padded suffix starting from 0 before the extension, such as `sprite_sheet0000000123.jpeg`.
  /// [format] Format type. The default is `jpeg`. Supported formats: - `jpeg`
  /// [interval] Starting from `0s`, create sprites at regular intervals. Specify the interval value in seconds.
  /// [quality] The quality of the generated sprite sheet. Enter a value between 1 and 100, where 1 is the lowest quality and 100 is the highest quality. The default is 100. A high quality value corresponds to a low image data compression ratio.
  /// [rowCount] The maximum number of rows per sprite sheet. When the sprite sheet is full, a new sprite sheet is created. The default is 0, which indicates no maximum limit.
  /// [spriteHeightPixels] The height of sprite in pixels. Must be an even integer. To preserve the source aspect ratio, set the SpriteSheet.sprite_height_pixels field or the SpriteSheet.sprite_width_pixels field, but not both (the API will automatically calculate the missing field). For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  /// [spriteWidthPixels] The width of sprite in pixels. Must be an even integer. To preserve the source aspect ratio, set the SpriteSheet.sprite_width_pixels field or the SpriteSheet.sprite_height_pixels field, but not both (the API will automatically calculate the missing field). For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  /// [startTimeOffset] Start time in seconds, relative to the output file timeline. Determines the first sprite to pick. The default is `0s`.
  /// [totalCount] Total number of sprites. Create the specified number of sprites distributed evenly across the timeline of the output media. The default is 100.
  SpriteSheetResponse({
    required this.columnCount,
    required this.endTimeOffset,
    required this.filePrefix,
    required this.format,
    required this.interval,
    required this.quality,
    required this.rowCount,
    required this.spriteHeightPixels,
    required this.spriteWidthPixels,
    required this.startTimeOffset,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnCount': columnCount,
      'endTimeOffset': endTimeOffset,
      'filePrefix': filePrefix,
      'format': format,
      'interval': interval,
      'quality': quality,
      'rowCount': rowCount,
      'spriteHeightPixels': spriteHeightPixels,
      'spriteWidthPixels': spriteWidthPixels,
      'startTimeOffset': startTimeOffset,
      'totalCount': totalCount,
    };
  }

  factory SpriteSheetResponse.fromMap(Map<String, dynamic> map) {
    return SpriteSheetResponse(
      columnCount: pulumi.Input.fromValue(map['columnCount'] as int),
      endTimeOffset: pulumi.Input.fromValue(map['endTimeOffset'] as String),
      filePrefix: pulumi.Input.fromValue(map['filePrefix'] as String),
      format: pulumi.Input.fromValue(map['format'] as String),
      interval: pulumi.Input.fromValue(map['interval'] as String),
      quality: pulumi.Input.fromValue(map['quality'] as int),
      rowCount: pulumi.Input.fromValue(map['rowCount'] as int),
      spriteHeightPixels: pulumi.Input.fromValue(map['spriteHeightPixels'] as int),
      spriteWidthPixels: pulumi.Input.fromValue(map['spriteWidthPixels'] as int),
      startTimeOffset: pulumi.Input.fromValue(map['startTimeOffset'] as String),
      totalCount: pulumi.Input.fromValue(map['totalCount'] as int),
    );
  }
}

