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
  const PreprocessingConfig({
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
      audio: (() { final guardedValue = map['audio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Audio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      color: (() { final guardedValue = map['color']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Color.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      crop: (() { final guardedValue = map['crop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Crop.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deblock: (() { final guardedValue = map['deblock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Deblock.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deinterlace: (() { final guardedValue = map['deinterlace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Deinterlace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      denoise: (() { final guardedValue = map['denoise']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Denoise.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pad: (() { final guardedValue = map['pad']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Pad.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
