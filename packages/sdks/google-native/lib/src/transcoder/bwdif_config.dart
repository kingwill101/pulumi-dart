// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Bob Weaver Deinterlacing Filter Configuration.
class BwdifConfig {
  /// Deinterlace all frames rather than just the frames identified as interlaced. The default is `false`.
  final pulumi.Input<bool>? deinterlaceAllFrames;
  /// Specifies the deinterlacing mode to adopt. The default is `send_frame`. Supported values: - `send_frame`: Output one frame for each frame - `send_field`: Output one frame for each field
  final pulumi.Input<String>? mode;
  /// The picture field parity assumed for the input interlaced video. The default is `auto`. Supported values: - `tff`: Assume the top field is first - `bff`: Assume the bottom field is first - `auto`: Enable automatic detection of field parity
  final pulumi.Input<String>? parity;

  /// Creates a new [BwdifConfig].
  /// [deinterlaceAllFrames] Deinterlace all frames rather than just the frames identified as interlaced. The default is `false`.
  /// [mode] Specifies the deinterlacing mode to adopt. The default is `send_frame`. Supported values: - `send_frame`: Output one frame for each frame - `send_field`: Output one frame for each field
  /// [parity] The picture field parity assumed for the input interlaced video. The default is `auto`. Supported values: - `tff`: Assume the top field is first - `bff`: Assume the bottom field is first - `auto`: Enable automatic detection of field parity
  const BwdifConfig({
    this.deinterlaceAllFrames,
    this.mode,
    this.parity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deinterlaceAllFrames': ?deinterlaceAllFrames,
      'mode': ?mode,
      'parity': ?parity,
    };
  }

  factory BwdifConfig.fromMap(Map<String, dynamic> map) {
    return BwdifConfig(
      deinterlaceAllFrames: (() { final guardedValue = map['deinterlaceAllFrames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parity: (() { final guardedValue = map['parity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

