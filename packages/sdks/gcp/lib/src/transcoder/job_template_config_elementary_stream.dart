// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_config_elementary_stream_audio_stream.dart';
import 'job_template_config_elementary_stream_video_stream.dart';

class JobTemplateConfigElementaryStream {
  /// Encoding of an audio stream.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateConfigElementaryStreamAudioStream>? audioStream;
  /// A unique key for this atom.
  final pulumi.Input<String>? key;
  /// Encoding of a video stream.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateConfigElementaryStreamVideoStream>? videoStream;

  /// Creates a new [JobTemplateConfigElementaryStream].
  /// [audioStream] Encoding of an audio stream.
  /// [key] A unique key for this atom.
  /// [videoStream] Encoding of a video stream.
  const JobTemplateConfigElementaryStream({
    this.audioStream,
    this.key,
    this.videoStream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioStream': ?pulumi.Input.mapOptionalInputValue<JobTemplateConfigElementaryStreamAudioStream, Map<String, dynamic>>(audioStream, (value) => value.toMap()),
      'key': ?key,
      'videoStream': ?pulumi.Input.mapOptionalInputValue<JobTemplateConfigElementaryStreamVideoStream, Map<String, dynamic>>(videoStream, (value) => value.toMap()),
    };
  }

  factory JobTemplateConfigElementaryStream.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigElementaryStream(
      audioStream: (() { final guardedValue = map['audioStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateConfigElementaryStreamAudioStream.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      videoStream: (() { final guardedValue = map['videoStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateConfigElementaryStreamVideoStream.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
