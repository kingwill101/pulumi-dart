// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audio_stream_response.dart';
import 'text_stream_response.dart';
import 'video_stream_response.dart';

/// Encoding of an input file such as an audio, video, or text track. Elementary streams must be packaged before mapping and sharing between different output formats.
class ElementaryStreamResponse {
  /// Encoding of an audio stream.
  final pulumi.Input<AudioStreamResponse> audioStream;
  /// A unique key for this elementary stream.
  final pulumi.Input<String> key;
  /// Encoding of a text stream. For example, closed captions or subtitles.
  final pulumi.Input<TextStreamResponse> textStream;
  /// Encoding of a video stream.
  final pulumi.Input<VideoStreamResponse> videoStream;

  /// Creates a new [ElementaryStreamResponse].
  /// [audioStream] Encoding of an audio stream.
  /// [key] A unique key for this elementary stream.
  /// [textStream] Encoding of a text stream. For example, closed captions or subtitles.
  /// [videoStream] Encoding of a video stream.
  ElementaryStreamResponse({
    required this.audioStream,
    required this.key,
    required this.textStream,
    required this.videoStream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioStream': pulumi.Input.mapInputValue<AudioStreamResponse, Map<String, dynamic>>(audioStream, (value) => value.toMap()),
      'key': key,
      'textStream': pulumi.Input.mapInputValue<TextStreamResponse, Map<String, dynamic>>(textStream, (value) => value.toMap()),
      'videoStream': pulumi.Input.mapInputValue<VideoStreamResponse, Map<String, dynamic>>(videoStream, (value) => value.toMap()),
    };
  }

  factory ElementaryStreamResponse.fromMap(Map<String, dynamic> map) {
    return ElementaryStreamResponse(
      audioStream: pulumi.Input.fromValue(AudioStreamResponse.fromMap((map['audioStream']! as Map).cast<String, dynamic>())),
      key: pulumi.Input.fromValue(map['key'] as String),
      textStream: pulumi.Input.fromValue(TextStreamResponse.fromMap((map['textStream']! as Map).cast<String, dynamic>())),
      videoStream: pulumi.Input.fromValue(VideoStreamResponse.fromMap((map['videoStream']! as Map).cast<String, dynamic>())),
    );
  }
}

