// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config_elementary_stream_audio_stream.dart';
import 'job_config_elementary_stream_video_stream.dart';

class JobConfigElementaryStream {
  /// Encoding of an audio stream.
  /// Structure is documented below.
  final pulumi.Input<JobConfigElementaryStreamAudioStream>? audioStream;
  /// A unique key for this atom.
  final pulumi.Input<String>? key;
  /// Encoding of a video stream.
  /// Structure is documented below.
  final pulumi.Input<JobConfigElementaryStreamVideoStream>? videoStream;

  /// Creates a new [JobConfigElementaryStream].
  /// [audioStream] Encoding of an audio stream.
  /// [key] A unique key for this atom.
  /// [videoStream] Encoding of a video stream.
  const JobConfigElementaryStream({
    this.audioStream,
    this.key,
    this.videoStream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioStream': ?pulumi.Input.mapOptionalInputValue<JobConfigElementaryStreamAudioStream, Map<String, dynamic>>(audioStream, (value) => value.toMap()),
      'key': ?key,
      'videoStream': ?pulumi.Input.mapOptionalInputValue<JobConfigElementaryStreamVideoStream, Map<String, dynamic>>(videoStream, (value) => value.toMap()),
    };
  }

  factory JobConfigElementaryStream.fromMap(Map<String, dynamic> map) {
    return JobConfigElementaryStream(
      audioStream: (() { final guardedValue = map['audioStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobConfigElementaryStreamAudioStream.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      videoStream: (() { final guardedValue = map['videoStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobConfigElementaryStreamVideoStream.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

