// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<AudioResponse> audio;
  /// Color preprocessing configuration.
  final pulumi.Input<ColorResponse> color;
  /// Specify the video cropping configuration.
  final pulumi.Input<CropResponse> crop;
  /// Deblock preprocessing configuration.
  final pulumi.Input<DeblockResponse> deblock;
  /// Specify the video deinterlace configuration.
  final pulumi.Input<DeinterlaceResponse> deinterlace;
  /// Denoise preprocessing configuration.
  final pulumi.Input<DenoiseResponse> denoise;
  /// Specify the video pad filter configuration.
  final pulumi.Input<PadResponse> pad;

  /// Creates a new [PreprocessingConfigResponse].
  /// [audio] Audio preprocessing configuration.
  /// [color] Color preprocessing configuration.
  /// [crop] Specify the video cropping configuration.
  /// [deblock] Deblock preprocessing configuration.
  /// [deinterlace] Specify the video deinterlace configuration.
  /// [denoise] Denoise preprocessing configuration.
  /// [pad] Specify the video pad filter configuration.
  const PreprocessingConfigResponse({
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
      'audio': pulumi.Input.mapInputValue<AudioResponse, Map<String, dynamic>>(audio, (value) => value.toMap()),
      'color': pulumi.Input.mapInputValue<ColorResponse, Map<String, dynamic>>(color, (value) => value.toMap()),
      'crop': pulumi.Input.mapInputValue<CropResponse, Map<String, dynamic>>(crop, (value) => value.toMap()),
      'deblock': pulumi.Input.mapInputValue<DeblockResponse, Map<String, dynamic>>(deblock, (value) => value.toMap()),
      'deinterlace': pulumi.Input.mapInputValue<DeinterlaceResponse, Map<String, dynamic>>(deinterlace, (value) => value.toMap()),
      'denoise': pulumi.Input.mapInputValue<DenoiseResponse, Map<String, dynamic>>(denoise, (value) => value.toMap()),
      'pad': pulumi.Input.mapInputValue<PadResponse, Map<String, dynamic>>(pad, (value) => value.toMap()),
    };
  }

  factory PreprocessingConfigResponse.fromMap(Map<String, dynamic> map) {
    return PreprocessingConfigResponse(
      audio: pulumi.Input.fromValue(AudioResponse.fromMap((map['audio']! as Map).cast<String, dynamic>())),
      color: pulumi.Input.fromValue(ColorResponse.fromMap((map['color']! as Map).cast<String, dynamic>())),
      crop: pulumi.Input.fromValue(CropResponse.fromMap((map['crop']! as Map).cast<String, dynamic>())),
      deblock: pulumi.Input.fromValue(DeblockResponse.fromMap((map['deblock']! as Map).cast<String, dynamic>())),
      deinterlace: pulumi.Input.fromValue(DeinterlaceResponse.fromMap((map['deinterlace']! as Map).cast<String, dynamic>())),
      denoise: pulumi.Input.fromValue(DenoiseResponse.fromMap((map['denoise']! as Map).cast<String, dynamic>())),
      pad: pulumi.Input.fromValue(PadResponse.fromMap((map['pad']! as Map).cast<String, dynamic>())),
    );
  }
}

