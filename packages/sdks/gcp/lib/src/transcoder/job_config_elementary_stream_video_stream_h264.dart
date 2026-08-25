// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobConfigElementaryStreamVideoStreamH264 {
  /// The video bitrate in bits per second.
  final pulumi.Input<int> bitrateBps;
  /// Target CRF level. The default is '21'.
  final pulumi.Input<int?>? crfLevel;
  /// The entropy coder to use. The default is 'cabac'.
  final pulumi.Input<String?>? entropyCoder;
  /// The target video frame rate in frames per second (FPS).
  final pulumi.Input<int> frameRate;
  /// Select the GOP size based on the specified duration. The default is '3s'.
  final pulumi.Input<String?>? gopDuration;
  /// The height of the video in pixels.
  final pulumi.Input<int?>? heightPixels;
  /// HLG color format setting for H264.
  final pulumi.Input<Map<String, dynamic>?>? hlg;
  /// Pixel format to use. The default is 'yuv420p'.
  final pulumi.Input<String?>? pixelFormat;
  /// Enforces the specified codec preset. The default is 'veryfast'.
  final pulumi.Input<String?>? preset;
  /// Enforces the specified codec profile.
  final pulumi.Input<String?>? profile;
  /// Specify the mode. The default is 'vbr'.
  final pulumi.Input<String?>? rateControlMode;
  /// SDR color format setting for H264.
  final pulumi.Input<Map<String, dynamic>?>? sdr;
  /// Initial fullness of the Video Buffering Verifier (VBV) buffer in bits.
  final pulumi.Input<int?>? vbvFullnessBits;
  /// Size of the Video Buffering Verifier (VBV) buffer in bits.
  final pulumi.Input<int?>? vbvSizeBits;
  /// The width of the video in pixels.
  final pulumi.Input<int?>? widthPixels;

  /// Creates a new [JobConfigElementaryStreamVideoStreamH264].
  /// [bitrateBps] The video bitrate in bits per second.
  /// [crfLevel] Target CRF level. The default is '21'.
  /// [entropyCoder] The entropy coder to use. The default is 'cabac'.
  /// [frameRate] The target video frame rate in frames per second (FPS).
  /// [gopDuration] Select the GOP size based on the specified duration. The default is '3s'.
  /// [heightPixels] The height of the video in pixels.
  /// [hlg] HLG color format setting for H264.
  /// [pixelFormat] Pixel format to use. The default is 'yuv420p'.
  /// [preset] Enforces the specified codec preset. The default is 'veryfast'.
  /// [profile] Enforces the specified codec profile.
  /// [rateControlMode] Specify the mode. The default is 'vbr'.
  /// [sdr] SDR color format setting for H264.
  /// [vbvFullnessBits] Initial fullness of the Video Buffering Verifier (VBV) buffer in bits.
  /// [vbvSizeBits] Size of the Video Buffering Verifier (VBV) buffer in bits.
  /// [widthPixels] The width of the video in pixels.
  const JobConfigElementaryStreamVideoStreamH264({
    required this.bitrateBps,
    this.crfLevel,
    this.entropyCoder,
    required this.frameRate,
    this.gopDuration,
    this.heightPixels,
    this.hlg,
    this.pixelFormat,
    this.preset,
    this.profile,
    this.rateControlMode,
    this.sdr,
    this.vbvFullnessBits,
    this.vbvSizeBits,
    this.widthPixels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitrateBps': bitrateBps,
      'crfLevel': ?crfLevel,
      'entropyCoder': ?entropyCoder,
      'frameRate': frameRate,
      'gopDuration': ?gopDuration,
      'heightPixels': ?heightPixels,
      'hlg': ?hlg,
      'pixelFormat': ?pixelFormat,
      'preset': ?preset,
      'profile': ?profile,
      'rateControlMode': ?rateControlMode,
      'sdr': ?sdr,
      'vbvFullnessBits': ?vbvFullnessBits,
      'vbvSizeBits': ?vbvSizeBits,
      'widthPixels': ?widthPixels,
    };
  }

  factory JobConfigElementaryStreamVideoStreamH264.fromMap(Map<String, dynamic> map) {
    return JobConfigElementaryStreamVideoStreamH264(
      bitrateBps: pulumi.Input.fromValue((map['bitrateBps'] as num).toInt()),
      crfLevel: (() { final guardedValue = map['crfLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      entropyCoder: (() { final guardedValue = map['entropyCoder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frameRate: pulumi.Input.fromValue((map['frameRate'] as num).toInt()),
      gopDuration: (() { final guardedValue = map['gopDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      heightPixels: (() { final guardedValue = map['heightPixels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      hlg: (() { final guardedValue = map['hlg']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      pixelFormat: (() { final guardedValue = map['pixelFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preset: (() { final guardedValue = map['preset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rateControlMode: (() { final guardedValue = map['rateControlMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sdr: (() { final guardedValue = map['sdr']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      vbvFullnessBits: (() { final guardedValue = map['vbvFullnessBits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      vbvSizeBits: (() { final guardedValue = map['vbvSizeBits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      widthPixels: (() { final guardedValue = map['widthPixels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
