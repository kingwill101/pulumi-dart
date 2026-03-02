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
  JobConfigElementaryStream({
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
      audioStream: map['audioStream'] == null ? null : (JobConfigElementaryStreamAudioStream.fromMap((map['audioStream']! as Map).cast<String, dynamic>())).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      videoStream: map['videoStream'] == null ? null : (JobConfigElementaryStreamVideoStream.fromMap((map['videoStream']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

