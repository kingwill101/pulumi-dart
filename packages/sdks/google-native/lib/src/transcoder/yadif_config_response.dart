// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Yet Another Deinterlacing Filter Configuration.
class YadifConfigResponse {
  /// Deinterlace all frames rather than just the frames identified as interlaced. The default is `false`.
  final pulumi.Input<bool> deinterlaceAllFrames;
  /// Disable spacial interlacing. The default is `false`.
  final pulumi.Input<bool> disableSpatialInterlacing;
  /// Specifies the deinterlacing mode to adopt. The default is `send_frame`. Supported values: - `send_frame`: Output one frame for each frame - `send_field`: Output one frame for each field
  final pulumi.Input<String> mode;
  /// The picture field parity assumed for the input interlaced video. The default is `auto`. Supported values: - `tff`: Assume the top field is first - `bff`: Assume the bottom field is first - `auto`: Enable automatic detection of field parity
  final pulumi.Input<String> parity;

  /// Creates a new [YadifConfigResponse].
  /// [deinterlaceAllFrames] Deinterlace all frames rather than just the frames identified as interlaced. The default is `false`.
  /// [disableSpatialInterlacing] Disable spacial interlacing. The default is `false`.
  /// [mode] Specifies the deinterlacing mode to adopt. The default is `send_frame`. Supported values: - `send_frame`: Output one frame for each frame - `send_field`: Output one frame for each field
  /// [parity] The picture field parity assumed for the input interlaced video. The default is `auto`. Supported values: - `tff`: Assume the top field is first - `bff`: Assume the bottom field is first - `auto`: Enable automatic detection of field parity
  YadifConfigResponse({
    required this.deinterlaceAllFrames,
    required this.disableSpatialInterlacing,
    required this.mode,
    required this.parity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deinterlaceAllFrames': deinterlaceAllFrames,
      'disableSpatialInterlacing': disableSpatialInterlacing,
      'mode': mode,
      'parity': parity,
    };
  }

  factory YadifConfigResponse.fromMap(Map<String, dynamic> map) {
    return YadifConfigResponse(
      deinterlaceAllFrames: pulumi.Input.fromValue(map['deinterlaceAllFrames'] as bool),
      disableSpatialInterlacing: pulumi.Input.fromValue(map['disableSpatialInterlacing'] as bool),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      parity: pulumi.Input.fromValue(map['parity'] as String),
    );
  }
}

