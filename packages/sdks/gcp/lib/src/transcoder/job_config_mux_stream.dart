// ignore_for_file: unused_element, unnecessary_cast

import 'job_config_mux_stream_segment_settings.dart';

class JobConfigMuxStream {
  /// The container format. The default is `mp4`.
  final String? container;
  /// List of ElementaryStream.key values multiplexed in this stream.
  final List<String>? elementaryStreams;
  /// Identifier of the encryption configuration to use.
  final String? encryptionId;
  /// The name of the generated file.
  final String? fileName;
  /// A unique key for this multiplexed stream.
  final String? key;
  /// Segment settings for ts, fmp4 and vtt.
  /// Structure is documented below.
  final JobConfigMuxStreamSegmentSettings? segmentSettings;

  /// Creates a new [JobConfigMuxStream].
  /// [container] The container format. The default is `mp4`.
  /// [elementaryStreams] List of ElementaryStream.key values multiplexed in this stream.
  /// [encryptionId] Identifier of the encryption configuration to use.
  /// [fileName] The name of the generated file.
  /// [key] A unique key for this multiplexed stream.
  /// [segmentSettings] Segment settings for ts, fmp4 and vtt.
  JobConfigMuxStream({
    this.container,
    this.elementaryStreams,
    this.encryptionId,
    this.fileName,
    this.key,
    this.segmentSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?container,
      'elementaryStreams': ?elementaryStreams,
      'encryptionId': ?encryptionId,
      'fileName': ?fileName,
      'key': ?key,
      'segmentSettings': ?segmentSettings == null ? null : segmentSettings!.toMap(),
    };
  }

  factory JobConfigMuxStream.fromMap(Map<String, dynamic> map) {
    return JobConfigMuxStream(
      container: map['container'] == null ? null : map['container'] as String,
      elementaryStreams: map['elementaryStreams'] == null ? null : (map['elementaryStreams'] as List).cast<String>(),
      encryptionId: map['encryptionId'] == null ? null : map['encryptionId'] as String,
      fileName: map['fileName'] == null ? null : map['fileName'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      segmentSettings: map['segmentSettings'] == null ? null : JobConfigMuxStreamSegmentSettings.fromMap((map['segmentSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

