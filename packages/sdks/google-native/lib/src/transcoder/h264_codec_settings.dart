// ignore_for_file: unused_element, unnecessary_cast


/// H264 codec settings.
class H264CodecSettings {
  /// Specifies whether an open Group of Pictures (GOP) structure should be allowed or not. The default is `false`.
  final bool? allowOpenGop;
  /// Specify the intensity of the adaptive quantizer (AQ). Must be between 0 and 1, where 0 disables the quantizer and 1 maximizes the quantizer. A higher value equals a lower bitrate but smoother image. The default is 0.
  final double? aqStrength;
  /// The number of consecutive B-frames. Must be greater than or equal to zero. Must be less than H264CodecSettings.gop_frame_count if set. The default is 0.
  final int? bFrameCount;
  /// Allow B-pyramid for reference frame selection. This may not be supported on all decoders. The default is `false`.
  final bool? bPyramid;
  /// The video bitrate in bits per second. The minimum value is 1,000. The maximum value is 800,000,000.
  final int bitrateBps;
  /// Target CRF level. Must be between 10 and 36, where 10 is the highest quality and 36 is the most efficient compression. The default is 21.
  final int? crfLevel;
  /// Use two-pass encoding strategy to achieve better video quality. H264CodecSettings.rate_control_mode must be `vbr`. The default is `false`.
  final bool? enableTwoPass;
  /// The entropy coder to use. The default is `cabac`. Supported entropy coders: - `cavlc` - `cabac`
  final String? entropyCoder;
  /// The target video frame rate in frames per second (FPS). Must be less than or equal to 120. Will default to the input frame rate if larger than the input frame rate. The API will generate an output FPS that is divisible by the input FPS, and smaller or equal to the target FPS. See [Calculating frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate) for more information.
  final double frameRate;
  /// Select the GOP size based on the specified duration. The default is `3s`. Note that `gopDuration` must be less than or equal to [`segmentDuration`](#SegmentSettings), and [`segmentDuration`](#SegmentSettings) must be divisible by `gopDuration`.
  final String? gopDuration;
  /// Select the GOP size based on the specified frame count. Must be greater than zero.
  final int? gopFrameCount;
  /// The height of the video in pixels. Must be an even integer. When not specified, the height is adjusted to match the specified width and input aspect ratio. If both are omitted, the input height is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  final int? heightPixels;
  /// Pixel format to use. The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel format - `yuv422p` pixel format - `yuv444p` pixel format - `yuv420p10` 10-bit HDR pixel format - `yuv422p10` 10-bit HDR pixel format - `yuv444p10` 10-bit HDR pixel format - `yuv420p12` 12-bit HDR pixel format - `yuv422p12` 12-bit HDR pixel format - `yuv444p12` 12-bit HDR pixel format
  final String? pixelFormat;
  /// Enforces the specified codec preset. The default is `veryfast`. The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.264#Preset). Note that certain values for this field may cause the transcoder to override other fields you set in the `H264CodecSettings` message.
  final String? preset;
  /// Enforces the specified codec profile. The following profiles are supported: * `baseline` * `main` * `high` (default) The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.264#Tune). Note that certain values for this field may cause the transcoder to override other fields you set in the `H264CodecSettings` message.
  final String? profile;
  /// Specify the mode. The default is `vbr`. Supported rate control modes: - `vbr` - variable bitrate - `crf` - constant rate factor
  final String? rateControlMode;
  /// Enforces the specified codec tune. The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.264#Tune). Note that certain values for this field may cause the transcoder to override other fields you set in the `H264CodecSettings` message.
  final String? tune;
  /// Initial fullness of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default is equal to 90% of H264CodecSettings.vbv_size_bits.
  final int? vbvFullnessBits;
  /// Size of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default is equal to H264CodecSettings.bitrate_bps.
  final int? vbvSizeBits;
  /// The width of the video in pixels. Must be an even integer. When not specified, the width is adjusted to match the specified height and input aspect ratio. If both are omitted, the input width is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  final int? widthPixels;

  /// Creates a new [H264CodecSettings].
  /// [allowOpenGop] Specifies whether an open Group of Pictures (GOP) structure should be allowed or not. The default is `false`.
  /// [aqStrength] Specify the intensity of the adaptive quantizer (AQ). Must be between 0 and 1, where 0 disables the quantizer and 1 maximizes the quantizer. A higher value equals a lower bitrate but smoother image. The default is 0.
  /// [bFrameCount] The number of consecutive B-frames. Must be greater than or equal to zero. Must be less than H264CodecSettings.gop_frame_count if set. The default is 0.
  /// [bPyramid] Allow B-pyramid for reference frame selection. This may not be supported on all decoders. The default is `false`.
  /// [bitrateBps] The video bitrate in bits per second. The minimum value is 1,000. The maximum value is 800,000,000.
  /// [crfLevel] Target CRF level. Must be between 10 and 36, where 10 is the highest quality and 36 is the most efficient compression. The default is 21.
  /// [enableTwoPass] Use two-pass encoding strategy to achieve better video quality. H264CodecSettings.rate_control_mode must be `vbr`. The default is `false`.
  /// [entropyCoder] The entropy coder to use. The default is `cabac`. Supported entropy coders: - `cavlc` - `cabac`
  /// [frameRate] The target video frame rate in frames per second (FPS). Must be less than or equal to 120. Will default to the input frame rate if larger than the input frame rate. The API will generate an output FPS that is divisible by the input FPS, and smaller or equal to the target FPS. See [Calculating frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate) for more information.
  /// [gopDuration] Select the GOP size based on the specified duration. The default is `3s`. Note that `gopDuration` must be less than or equal to [`segmentDuration`](#SegmentSettings), and [`segmentDuration`](#SegmentSettings) must be divisible by `gopDuration`.
  /// [gopFrameCount] Select the GOP size based on the specified frame count. Must be greater than zero.
  /// [heightPixels] The height of the video in pixels. Must be an even integer. When not specified, the height is adjusted to match the specified width and input aspect ratio. If both are omitted, the input height is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  /// [pixelFormat] Pixel format to use. The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel format - `yuv422p` pixel format - `yuv444p` pixel format - `yuv420p10` 10-bit HDR pixel format - `yuv422p10` 10-bit HDR pixel format - `yuv444p10` 10-bit HDR pixel format - `yuv420p12` 12-bit HDR pixel format - `yuv422p12` 12-bit HDR pixel format - `yuv444p12` 12-bit HDR pixel format
  /// [preset] Enforces the specified codec preset. The default is `veryfast`. The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.264#Preset). Note that certain values for this field may cause the transcoder to override other fields you set in the `H264CodecSettings` message.
  /// [profile] Enforces the specified codec profile. The following profiles are supported: * `baseline` * `main` * `high` (default) The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.264#Tune). Note that certain values for this field may cause the transcoder to override other fields you set in the `H264CodecSettings` message.
  /// [rateControlMode] Specify the mode. The default is `vbr`. Supported rate control modes: - `vbr` - variable bitrate - `crf` - constant rate factor
  /// [tune] Enforces the specified codec tune. The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.264#Tune). Note that certain values for this field may cause the transcoder to override other fields you set in the `H264CodecSettings` message.
  /// [vbvFullnessBits] Initial fullness of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default is equal to 90% of H264CodecSettings.vbv_size_bits.
  /// [vbvSizeBits] Size of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default is equal to H264CodecSettings.bitrate_bps.
  /// [widthPixels] The width of the video in pixels. Must be an even integer. When not specified, the width is adjusted to match the specified height and input aspect ratio. If both are omitted, the input width is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  H264CodecSettings({
    this.allowOpenGop,
    this.aqStrength,
    this.bFrameCount,
    this.bPyramid,
    required this.bitrateBps,
    this.crfLevel,
    this.enableTwoPass,
    this.entropyCoder,
    required this.frameRate,
    this.gopDuration,
    this.gopFrameCount,
    this.heightPixels,
    this.pixelFormat,
    this.preset,
    this.profile,
    this.rateControlMode,
    this.tune,
    this.vbvFullnessBits,
    this.vbvSizeBits,
    this.widthPixels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowOpenGop': ?allowOpenGop,
      'aqStrength': ?aqStrength,
      'bFrameCount': ?bFrameCount,
      'bPyramid': ?bPyramid,
      'bitrateBps': bitrateBps,
      'crfLevel': ?crfLevel,
      'enableTwoPass': ?enableTwoPass,
      'entropyCoder': ?entropyCoder,
      'frameRate': frameRate,
      'gopDuration': ?gopDuration,
      'gopFrameCount': ?gopFrameCount,
      'heightPixels': ?heightPixels,
      'pixelFormat': ?pixelFormat,
      'preset': ?preset,
      'profile': ?profile,
      'rateControlMode': ?rateControlMode,
      'tune': ?tune,
      'vbvFullnessBits': ?vbvFullnessBits,
      'vbvSizeBits': ?vbvSizeBits,
      'widthPixels': ?widthPixels,
    };
  }

  factory H264CodecSettings.fromMap(Map<String, dynamic> map) {
    return H264CodecSettings(
      allowOpenGop: map['allowOpenGop'] == null ? null : map['allowOpenGop'] as bool,
      aqStrength: map['aqStrength'] == null ? null : map['aqStrength'] as double,
      bFrameCount: map['bFrameCount'] == null ? null : map['bFrameCount'] as int,
      bPyramid: map['bPyramid'] == null ? null : map['bPyramid'] as bool,
      bitrateBps: map['bitrateBps'] as int,
      crfLevel: map['crfLevel'] == null ? null : map['crfLevel'] as int,
      enableTwoPass: map['enableTwoPass'] == null ? null : map['enableTwoPass'] as bool,
      entropyCoder: map['entropyCoder'] == null ? null : map['entropyCoder'] as String,
      frameRate: map['frameRate'] as double,
      gopDuration: map['gopDuration'] == null ? null : map['gopDuration'] as String,
      gopFrameCount: map['gopFrameCount'] == null ? null : map['gopFrameCount'] as int,
      heightPixels: map['heightPixels'] == null ? null : map['heightPixels'] as int,
      pixelFormat: map['pixelFormat'] == null ? null : map['pixelFormat'] as String,
      preset: map['preset'] == null ? null : map['preset'] as String,
      profile: map['profile'] == null ? null : map['profile'] as String,
      rateControlMode: map['rateControlMode'] == null ? null : map['rateControlMode'] as String,
      tune: map['tune'] == null ? null : map['tune'] as String,
      vbvFullnessBits: map['vbvFullnessBits'] == null ? null : map['vbvFullnessBits'] as int,
      vbvSizeBits: map['vbvSizeBits'] == null ? null : map['vbvSizeBits'] as int,
      widthPixels: map['widthPixels'] == null ? null : map['widthPixels'] as int,
    );
  }
}

