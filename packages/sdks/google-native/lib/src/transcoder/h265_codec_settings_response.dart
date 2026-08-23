// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// H265 codec settings.
class H265CodecSettingsResponse {
  /// Specifies whether an open Group of Pictures (GOP) structure should be allowed or not. The default is `false`.
  final pulumi.Input<bool> allowOpenGop;
  /// Specify the intensity of the adaptive quantizer (AQ). Must be between 0 and 1, where 0 disables the quantizer and 1 maximizes the quantizer. A higher value equals a lower bitrate but smoother image. The default is 0.
  final pulumi.Input<double> aqStrength;
  /// The number of consecutive B-frames. Must be greater than or equal to zero. Must be less than H265CodecSettings.gop_frame_count if set. The default is 0.
  final pulumi.Input<int> bFrameCount;
  /// Allow B-pyramid for reference frame selection. This may not be supported on all decoders. The default is `false`.
  final pulumi.Input<bool> bPyramid;
  /// The video bitrate in bits per second. The minimum value is 1,000. The maximum value is 800,000,000.
  final pulumi.Input<int> bitrateBps;
  /// Target CRF level. Must be between 10 and 36, where 10 is the highest quality and 36 is the most efficient compression. The default is 21.
  final pulumi.Input<int> crfLevel;
  /// Use two-pass encoding strategy to achieve better video quality. H265CodecSettings.rate_control_mode must be `vbr`. The default is `false`.
  final pulumi.Input<bool> enableTwoPass;
  /// The target video frame rate in frames per second (FPS). Must be less than or equal to 120. Will default to the input frame rate if larger than the input frame rate. The API will generate an output FPS that is divisible by the input FPS, and smaller or equal to the target FPS. See [Calculating frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate) for more information.
  final pulumi.Input<double> frameRate;
  /// Select the GOP size based on the specified duration. The default is `3s`. Note that `gopDuration` must be less than or equal to [`segmentDuration`](#SegmentSettings), and [`segmentDuration`](#SegmentSettings) must be divisible by `gopDuration`.
  final pulumi.Input<String> gopDuration;
  /// Select the GOP size based on the specified frame count. Must be greater than zero.
  final pulumi.Input<int> gopFrameCount;
  /// The height of the video in pixels. Must be an even integer. When not specified, the height is adjusted to match the specified width and input aspect ratio. If both are omitted, the input height is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  final pulumi.Input<int> heightPixels;
  /// Pixel format to use. The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel format - `yuv422p` pixel format - `yuv444p` pixel format - `yuv420p10` 10-bit HDR pixel format - `yuv422p10` 10-bit HDR pixel format - `yuv444p10` 10-bit HDR pixel format - `yuv420p12` 12-bit HDR pixel format - `yuv422p12` 12-bit HDR pixel format - `yuv444p12` 12-bit HDR pixel format
  final pulumi.Input<String> pixelFormat;
  /// Enforces the specified codec preset. The default is `veryfast`. The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.265). Note that certain values for this field may cause the transcoder to override other fields you set in the `H265CodecSettings` message.
  final pulumi.Input<String> preset;
  /// Enforces the specified codec profile. The following profiles are supported: * 8-bit profiles * `main` (default) * `main-intra` * `mainstillpicture` * 10-bit profiles * `main10` (default) * `main10-intra` * `main422-10` * `main422-10-intra` * `main444-10` * `main444-10-intra` * 12-bit profiles * `main12` (default) * `main12-intra` * `main422-12` * `main422-12-intra` * `main444-12` * `main444-12-intra` The available options are [FFmpeg-compatible](https://x265.readthedocs.io/). Note that certain values for this field may cause the transcoder to override other fields you set in the `H265CodecSettings` message.
  final pulumi.Input<String> profile;
  /// Specify the mode. The default is `vbr`. Supported rate control modes: - `vbr` - variable bitrate - `crf` - constant rate factor
  final pulumi.Input<String> rateControlMode;
  /// Enforces the specified codec tune. The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.265). Note that certain values for this field may cause the transcoder to override other fields you set in the `H265CodecSettings` message.
  final pulumi.Input<String> tune;
  /// Initial fullness of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default is equal to 90% of H265CodecSettings.vbv_size_bits.
  final pulumi.Input<int> vbvFullnessBits;
  /// Size of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default is equal to `VideoStream.bitrate_bps`.
  final pulumi.Input<int> vbvSizeBits;
  /// The width of the video in pixels. Must be an even integer. When not specified, the width is adjusted to match the specified height and input aspect ratio. If both are omitted, the input width is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  final pulumi.Input<int> widthPixels;

  /// Creates a new [H265CodecSettingsResponse].
  /// [allowOpenGop] Specifies whether an open Group of Pictures (GOP) structure should be allowed or not. The default is `false`.
  /// [aqStrength] Specify the intensity of the adaptive quantizer (AQ). Must be between 0 and 1, where 0 disables the quantizer and 1 maximizes the quantizer. A higher value equals a lower bitrate but smoother image. The default is 0.
  /// [bFrameCount] The number of consecutive B-frames. Must be greater than or equal to zero. Must be less than H265CodecSettings.gop_frame_count if set. The default is 0.
  /// [bPyramid] Allow B-pyramid for reference frame selection. This may not be supported on all decoders. The default is `false`.
  /// [bitrateBps] The video bitrate in bits per second. The minimum value is 1,000. The maximum value is 800,000,000.
  /// [crfLevel] Target CRF level. Must be between 10 and 36, where 10 is the highest quality and 36 is the most efficient compression. The default is 21.
  /// [enableTwoPass] Use two-pass encoding strategy to achieve better video quality. H265CodecSettings.rate_control_mode must be `vbr`. The default is `false`.
  /// [frameRate] The target video frame rate in frames per second (FPS). Must be less than or equal to 120. Will default to the input frame rate if larger than the input frame rate. The API will generate an output FPS that is divisible by the input FPS, and smaller or equal to the target FPS. See [Calculating frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate) for more information.
  /// [gopDuration] Select the GOP size based on the specified duration. The default is `3s`. Note that `gopDuration` must be less than or equal to [`segmentDuration`](#SegmentSettings), and [`segmentDuration`](#SegmentSettings) must be divisible by `gopDuration`.
  /// [gopFrameCount] Select the GOP size based on the specified frame count. Must be greater than zero.
  /// [heightPixels] The height of the video in pixels. Must be an even integer. When not specified, the height is adjusted to match the specified width and input aspect ratio. If both are omitted, the input height is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  /// [pixelFormat] Pixel format to use. The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel format - `yuv422p` pixel format - `yuv444p` pixel format - `yuv420p10` 10-bit HDR pixel format - `yuv422p10` 10-bit HDR pixel format - `yuv444p10` 10-bit HDR pixel format - `yuv420p12` 12-bit HDR pixel format - `yuv422p12` 12-bit HDR pixel format - `yuv444p12` 12-bit HDR pixel format
  /// [preset] Enforces the specified codec preset. The default is `veryfast`. The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.265). Note that certain values for this field may cause the transcoder to override other fields you set in the `H265CodecSettings` message.
  /// [profile] Enforces the specified codec profile. The following profiles are supported: * 8-bit profiles * `main` (default) * `main-intra` * `mainstillpicture` * 10-bit profiles * `main10` (default) * `main10-intra` * `main422-10` * `main422-10-intra` * `main444-10` * `main444-10-intra` * 12-bit profiles * `main12` (default) * `main12-intra` * `main422-12` * `main422-12-intra` * `main444-12` * `main444-12-intra` The available options are [FFmpeg-compatible](https://x265.readthedocs.io/). Note that certain values for this field may cause the transcoder to override other fields you set in the `H265CodecSettings` message.
  /// [rateControlMode] Specify the mode. The default is `vbr`. Supported rate control modes: - `vbr` - variable bitrate - `crf` - constant rate factor
  /// [tune] Enforces the specified codec tune. The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.265). Note that certain values for this field may cause the transcoder to override other fields you set in the `H265CodecSettings` message.
  /// [vbvFullnessBits] Initial fullness of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default is equal to 90% of H265CodecSettings.vbv_size_bits.
  /// [vbvSizeBits] Size of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default is equal to `VideoStream.bitrate_bps`.
  /// [widthPixels] The width of the video in pixels. Must be an even integer. When not specified, the width is adjusted to match the specified height and input aspect ratio. If both are omitted, the input width is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  const H265CodecSettingsResponse({
    required this.allowOpenGop,
    required this.aqStrength,
    required this.bFrameCount,
    required this.bPyramid,
    required this.bitrateBps,
    required this.crfLevel,
    required this.enableTwoPass,
    required this.frameRate,
    required this.gopDuration,
    required this.gopFrameCount,
    required this.heightPixels,
    required this.pixelFormat,
    required this.preset,
    required this.profile,
    required this.rateControlMode,
    required this.tune,
    required this.vbvFullnessBits,
    required this.vbvSizeBits,
    required this.widthPixels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowOpenGop': allowOpenGop,
      'aqStrength': aqStrength,
      'bFrameCount': bFrameCount,
      'bPyramid': bPyramid,
      'bitrateBps': bitrateBps,
      'crfLevel': crfLevel,
      'enableTwoPass': enableTwoPass,
      'frameRate': frameRate,
      'gopDuration': gopDuration,
      'gopFrameCount': gopFrameCount,
      'heightPixels': heightPixels,
      'pixelFormat': pixelFormat,
      'preset': preset,
      'profile': profile,
      'rateControlMode': rateControlMode,
      'tune': tune,
      'vbvFullnessBits': vbvFullnessBits,
      'vbvSizeBits': vbvSizeBits,
      'widthPixels': widthPixels,
    };
  }

  factory H265CodecSettingsResponse.fromMap(Map<String, dynamic> map) {
    return H265CodecSettingsResponse(
      allowOpenGop: pulumi.Input.fromValue(map['allowOpenGop'] as bool),
      aqStrength: pulumi.Input.fromValue(map['aqStrength'] as double),
      bFrameCount: pulumi.Input.fromValue(map['bFrameCount'] as int),
      bPyramid: pulumi.Input.fromValue(map['bPyramid'] as bool),
      bitrateBps: pulumi.Input.fromValue(map['bitrateBps'] as int),
      crfLevel: pulumi.Input.fromValue(map['crfLevel'] as int),
      enableTwoPass: pulumi.Input.fromValue(map['enableTwoPass'] as bool),
      frameRate: pulumi.Input.fromValue(map['frameRate'] as double),
      gopDuration: pulumi.Input.fromValue(map['gopDuration'] as String),
      gopFrameCount: pulumi.Input.fromValue(map['gopFrameCount'] as int),
      heightPixels: pulumi.Input.fromValue(map['heightPixels'] as int),
      pixelFormat: pulumi.Input.fromValue(map['pixelFormat'] as String),
      preset: pulumi.Input.fromValue(map['preset'] as String),
      profile: pulumi.Input.fromValue(map['profile'] as String),
      rateControlMode: pulumi.Input.fromValue(map['rateControlMode'] as String),
      tune: pulumi.Input.fromValue(map['tune'] as String),
      vbvFullnessBits: pulumi.Input.fromValue(map['vbvFullnessBits'] as int),
      vbvSizeBits: pulumi.Input.fromValue(map['vbvSizeBits'] as int),
      widthPixels: pulumi.Input.fromValue(map['widthPixels'] as int),
    );
  }
}
