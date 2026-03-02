// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audio.dart';
import 'color.dart';
import 'crop.dart';
import 'deblock.dart';
import 'deinterlace.dart';
import 'denoise.dart';
import 'pad.dart';

/// Preprocessing configurations.
class PreprocessingConfig {
  /// Audio preprocessing configuration.
  final pulumi.Input<Audio>? audio;
  /// Color preprocessing configuration.
  final pulumi.Input<Color>? color;
  /// Specify the video cropping configuration.
  final pulumi.Input<Crop>? crop;
  /// Deblock preprocessing configuration.
  final pulumi.Input<Deblock>? deblock;
  /// Specify the video deinterlace configuration.
  final pulumi.Input<Deinterlace>? deinterlace;
  /// Denoise preprocessing configuration.
  final pulumi.Input<Denoise>? denoise;
  /// Specify the video pad filter configuration.
  final pulumi.Input<Pad>? pad;

  /// Creates a new [PreprocessingConfig].
  /// [audio] Audio preprocessing configuration.
  /// [color] Color preprocessing configuration.
  /// [crop] Specify the video cropping configuration.
  /// [deblock] Deblock preprocessing configuration.
  /// [deinterlace] Specify the video deinterlace configuration.
  /// [denoise] Denoise preprocessing configuration.
  /// [pad] Specify the video pad filter configuration.
  PreprocessingConfig({
    this.audio,
    this.color,
    this.crop,
    this.deblock,
    this.deinterlace,
    this.denoise,
    this.pad,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': ?pulumi.Input.mapOptionalInputValue<Audio, Map<String, dynamic>>(audio, (value) => value.toMap()),
      'color': ?pulumi.Input.mapOptionalInputValue<Color, Map<String, dynamic>>(color, (value) => value.toMap()),
      'crop': ?pulumi.Input.mapOptionalInputValue<Crop, Map<String, dynamic>>(crop, (value) => value.toMap()),
      'deblock': ?pulumi.Input.mapOptionalInputValue<Deblock, Map<String, dynamic>>(deblock, (value) => value.toMap()),
      'deinterlace': ?pulumi.Input.mapOptionalInputValue<Deinterlace, Map<String, dynamic>>(deinterlace, (value) => value.toMap()),
      'denoise': ?pulumi.Input.mapOptionalInputValue<Denoise, Map<String, dynamic>>(denoise, (value) => value.toMap()),
      'pad': ?pulumi.Input.mapOptionalInputValue<Pad, Map<String, dynamic>>(pad, (value) => value.toMap()),
    };
  }

  factory PreprocessingConfig.fromMap(Map<String, dynamic> map) {
    return PreprocessingConfig(
      audio: map['audio'] == null ? null : (Audio.fromMap((map['audio'] as Map).cast<String, dynamic>())).input(),
      color: map['color'] == null ? null : (Color.fromMap((map['color'] as Map).cast<String, dynamic>())).input(),
      crop: map['crop'] == null ? null : (Crop.fromMap((map['crop'] as Map).cast<String, dynamic>())).input(),
      deblock: map['deblock'] == null ? null : (Deblock.fromMap((map['deblock'] as Map).cast<String, dynamic>())).input(),
      deinterlace: map['deinterlace'] == null ? null : (Deinterlace.fromMap((map['deinterlace'] as Map).cast<String, dynamic>())).input(),
      denoise: map['denoise'] == null ? null : (Denoise.fromMap((map['denoise'] as Map).cast<String, dynamic>())).input(),
      pad: map['pad'] == null ? null : (Pad.fromMap((map['pad'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

