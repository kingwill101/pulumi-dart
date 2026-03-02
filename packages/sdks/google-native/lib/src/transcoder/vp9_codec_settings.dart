// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VP9 codec settings.
class Vp9CodecSettings {
  /// The video bitrate in bits per second. The minimum value is 1,000. The maximum value is 480,000,000.
  final pulumi.Input<int> bitrateBps;
  /// Target CRF level. Must be between 10 and 36, where 10 is the highest quality and 36 is the most efficient compression. The default is 21. **Note:** This field is not supported.
  final pulumi.Input<int>? crfLevel;
  /// The target video frame rate in frames per second (FPS). Must be less than or equal to 120. Will default to the input frame rate if larger than the input frame rate. The API will generate an output FPS that is divisible by the input FPS, and smaller or equal to the target FPS. See [Calculating frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate) for more information.
  final pulumi.Input<double> frameRate;
  /// Select the GOP size based on the specified duration. The default is `3s`. Note that `gopDuration` must be less than or equal to [`segmentDuration`](#SegmentSettings), and [`segmentDuration`](#SegmentSettings) must be divisible by `gopDuration`.
  final pulumi.Input<String>? gopDuration;
  /// Select the GOP size based on the specified frame count. Must be greater than zero.
  final pulumi.Input<int>? gopFrameCount;
  /// The height of the video in pixels. Must be an even integer. When not specified, the height is adjusted to match the specified width and input aspect ratio. If both are omitted, the input height is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  final pulumi.Input<int>? heightPixels;
  /// Pixel format to use. The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel format - `yuv422p` pixel format - `yuv444p` pixel format - `yuv420p10` 10-bit HDR pixel format - `yuv422p10` 10-bit HDR pixel format - `yuv444p10` 10-bit HDR pixel format - `yuv420p12` 12-bit HDR pixel format - `yuv422p12` 12-bit HDR pixel format - `yuv444p12` 12-bit HDR pixel format
  final pulumi.Input<String>? pixelFormat;
  /// Enforces the specified codec profile. The following profiles are supported: * `profile0` (default) * `profile1` * `profile2` * `profile3` The available options are [WebM-compatible](https://www.webmproject.org/vp9/profiles/). Note that certain values for this field may cause the transcoder to override other fields you set in the `Vp9CodecSettings` message.
  final pulumi.Input<String>? profile;
  /// Specify the mode. The default is `vbr`. Supported rate control modes: - `vbr` - variable bitrate
  final pulumi.Input<String>? rateControlMode;
  /// The width of the video in pixels. Must be an even integer. When not specified, the width is adjusted to match the specified height and input aspect ratio. If both are omitted, the input width is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  final pulumi.Input<int>? widthPixels;

  /// Creates a new [Vp9CodecSettings].
  /// [bitrateBps] The video bitrate in bits per second. The minimum value is 1,000. The maximum value is 480,000,000.
  /// [crfLevel] Target CRF level. Must be between 10 and 36, where 10 is the highest quality and 36 is the most efficient compression. The default is 21. **Note:** This field is not supported.
  /// [frameRate] The target video frame rate in frames per second (FPS). Must be less than or equal to 120. Will default to the input frame rate if larger than the input frame rate. The API will generate an output FPS that is divisible by the input FPS, and smaller or equal to the target FPS. See [Calculating frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate) for more information.
  /// [gopDuration] Select the GOP size based on the specified duration. The default is `3s`. Note that `gopDuration` must be less than or equal to [`segmentDuration`](#SegmentSettings), and [`segmentDuration`](#SegmentSettings) must be divisible by `gopDuration`.
  /// [gopFrameCount] Select the GOP size based on the specified frame count. Must be greater than zero.
  /// [heightPixels] The height of the video in pixels. Must be an even integer. When not specified, the height is adjusted to match the specified width and input aspect ratio. If both are omitted, the input height is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  /// [pixelFormat] Pixel format to use. The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel format - `yuv422p` pixel format - `yuv444p` pixel format - `yuv420p10` 10-bit HDR pixel format - `yuv422p10` 10-bit HDR pixel format - `yuv444p10` 10-bit HDR pixel format - `yuv420p12` 12-bit HDR pixel format - `yuv422p12` 12-bit HDR pixel format - `yuv444p12` 12-bit HDR pixel format
  /// [profile] Enforces the specified codec profile. The following profiles are supported: * `profile0` (default) * `profile1` * `profile2` * `profile3` The available options are [WebM-compatible](https://www.webmproject.org/vp9/profiles/). Note that certain values for this field may cause the transcoder to override other fields you set in the `Vp9CodecSettings` message.
  /// [rateControlMode] Specify the mode. The default is `vbr`. Supported rate control modes: - `vbr` - variable bitrate
  /// [widthPixels] The width of the video in pixels. Must be an even integer. When not specified, the width is adjusted to match the specified height and input aspect ratio. If both are omitted, the input width is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  Vp9CodecSettings({
    required this.bitrateBps,
    this.crfLevel,
    required this.frameRate,
    this.gopDuration,
    this.gopFrameCount,
    this.heightPixels,
    this.pixelFormat,
    this.profile,
    this.rateControlMode,
    this.widthPixels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitrateBps': bitrateBps,
      'crfLevel': ?crfLevel,
      'frameRate': frameRate,
      'gopDuration': ?gopDuration,
      'gopFrameCount': ?gopFrameCount,
      'heightPixels': ?heightPixels,
      'pixelFormat': ?pixelFormat,
      'profile': ?profile,
      'rateControlMode': ?rateControlMode,
      'widthPixels': ?widthPixels,
    };
  }

  factory Vp9CodecSettings.fromMap(Map<String, dynamic> map) {
    return Vp9CodecSettings(
      bitrateBps: (map['bitrateBps'] as int).input(),
      crfLevel: map['crfLevel'] == null ? null : (map['crfLevel'] as int).input(),
      frameRate: (map['frameRate'] as double).input(),
      gopDuration: map['gopDuration'] == null ? null : (map['gopDuration'] as String).input(),
      gopFrameCount: map['gopFrameCount'] == null ? null : (map['gopFrameCount'] as int).input(),
      heightPixels: map['heightPixels'] == null ? null : (map['heightPixels'] as int).input(),
      pixelFormat: map['pixelFormat'] == null ? null : (map['pixelFormat'] as String).input(),
      profile: map['profile'] == null ? null : (map['profile'] as String).input(),
      rateControlMode: map['rateControlMode'] == null ? null : (map['rateControlMode'] as String).input(),
      widthPixels: map['widthPixels'] == null ? null : (map['widthPixels'] as int).input(),
    );
  }
}

