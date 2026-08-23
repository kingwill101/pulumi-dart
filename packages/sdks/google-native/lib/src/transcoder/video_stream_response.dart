// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'h264_codec_settings_response.dart';
import 'h265_codec_settings_response.dart';
import 'vp9_codec_settings_response.dart';

/// Video stream resource.
class VideoStreamResponse {
  /// H264 codec settings.
  final pulumi.Input<H264CodecSettingsResponse> h264;
  /// H265 codec settings.
  final pulumi.Input<H265CodecSettingsResponse> h265;
  /// VP9 codec settings.
  final pulumi.Input<Vp9CodecSettingsResponse> vp9;

  /// Creates a new [VideoStreamResponse].
  /// [h264] H264 codec settings.
  /// [h265] H265 codec settings.
  /// [vp9] VP9 codec settings.
  const VideoStreamResponse({
    required this.h264,
    required this.h265,
    required this.vp9,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'h264': pulumi.Input.mapInputValue<H264CodecSettingsResponse, Map<String, dynamic>>(h264, (value) => value.toMap()),
      'h265': pulumi.Input.mapInputValue<H265CodecSettingsResponse, Map<String, dynamic>>(h265, (value) => value.toMap()),
      'vp9': pulumi.Input.mapInputValue<Vp9CodecSettingsResponse, Map<String, dynamic>>(vp9, (value) => value.toMap()),
    };
  }

  factory VideoStreamResponse.fromMap(Map<String, dynamic> map) {
    return VideoStreamResponse(
      h264: pulumi.Input.fromValue(H264CodecSettingsResponse.fromMap((map['h264']! as Map).cast<String, dynamic>())),
      h265: pulumi.Input.fromValue(H265CodecSettingsResponse.fromMap((map['h265']! as Map).cast<String, dynamic>())),
      vp9: pulumi.Input.fromValue(Vp9CodecSettingsResponse.fromMap((map['vp9']! as Map).cast<String, dynamic>())),
    );
  }
}
