// ignore_for_file: unused_element, unnecessary_cast

import 'audio_response.dart';
import 'color_response.dart';
import 'crop_response.dart';
import 'deblock_response.dart';
import 'deinterlace_response.dart';
import 'denoise_response.dart';
import 'pad_response.dart';

/// Preprocessing configurations.
class PreprocessingConfigResponse {
  /// Audio preprocessing configuration.
  final AudioResponse audio;
  /// Color preprocessing configuration.
  final ColorResponse color;
  /// Specify the video cropping configuration.
  final CropResponse crop;
  /// Deblock preprocessing configuration.
  final DeblockResponse deblock;
  /// Specify the video deinterlace configuration.
  final DeinterlaceResponse deinterlace;
  /// Denoise preprocessing configuration.
  final DenoiseResponse denoise;
  /// Specify the video pad filter configuration.
  final PadResponse pad;

  /// Creates a new [PreprocessingConfigResponse].
  /// [audio] Audio preprocessing configuration.
  /// [color] Color preprocessing configuration.
  /// [crop] Specify the video cropping configuration.
  /// [deblock] Deblock preprocessing configuration.
  /// [deinterlace] Specify the video deinterlace configuration.
  /// [denoise] Denoise preprocessing configuration.
  /// [pad] Specify the video pad filter configuration.
  PreprocessingConfigResponse({
    required this.audio,
    required this.color,
    required this.crop,
    required this.deblock,
    required this.deinterlace,
    required this.denoise,
    required this.pad,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': audio.toMap(),
      'color': color.toMap(),
      'crop': crop.toMap(),
      'deblock': deblock.toMap(),
      'deinterlace': deinterlace.toMap(),
      'denoise': denoise.toMap(),
      'pad': pad.toMap(),
    };
  }

  factory PreprocessingConfigResponse.fromMap(Map<String, dynamic> map) {
    return PreprocessingConfigResponse(
      audio: AudioResponse.fromMap((map['audio'] as Map).cast<String, dynamic>()),
      color: ColorResponse.fromMap((map['color'] as Map).cast<String, dynamic>()),
      crop: CropResponse.fromMap((map['crop'] as Map).cast<String, dynamic>()),
      deblock: DeblockResponse.fromMap((map['deblock'] as Map).cast<String, dynamic>()),
      deinterlace: DeinterlaceResponse.fromMap((map['deinterlace'] as Map).cast<String, dynamic>()),
      denoise: DenoiseResponse.fromMap((map['denoise'] as Map).cast<String, dynamic>()),
      pad: PadResponse.fromMap((map['pad'] as Map).cast<String, dynamic>()),
    );
  }
}

