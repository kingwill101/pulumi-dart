// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audio_stream.dart';
import 'text_stream.dart';
import 'video_stream.dart';

/// Encoding of an input file such as an audio, video, or text track. Elementary streams must be packaged before mapping and sharing between different output formats.
class ElementaryStream {
  /// Encoding of an audio stream.
  final pulumi.Input<AudioStream>? audioStream;
  /// A unique key for this elementary stream.
  final pulumi.Input<String>? key;
  /// Encoding of a text stream. For example, closed captions or subtitles.
  final pulumi.Input<TextStream>? textStream;
  /// Encoding of a video stream.
  final pulumi.Input<VideoStream>? videoStream;

  /// Creates a new [ElementaryStream].
  /// [audioStream] Encoding of an audio stream.
  /// [key] A unique key for this elementary stream.
  /// [textStream] Encoding of a text stream. For example, closed captions or subtitles.
  /// [videoStream] Encoding of a video stream.
  const ElementaryStream({
    this.audioStream,
    this.key,
    this.textStream,
    this.videoStream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioStream': ?pulumi.Input.mapOptionalInputValue<AudioStream, Map<String, dynamic>>(audioStream, (value) => value.toMap()),
      'key': ?key,
      'textStream': ?pulumi.Input.mapOptionalInputValue<TextStream, Map<String, dynamic>>(textStream, (value) => value.toMap()),
      'videoStream': ?pulumi.Input.mapOptionalInputValue<VideoStream, Map<String, dynamic>>(videoStream, (value) => value.toMap()),
    };
  }

  factory ElementaryStream.fromMap(Map<String, dynamic> map) {
    return ElementaryStream(
      audioStream: (() { final guardedValue = map['audioStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AudioStream.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textStream: (() { final guardedValue = map['textStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TextStream.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      videoStream: (() { final guardedValue = map['videoStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VideoStream.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
