// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config_mux_stream_segment_settings.dart';

class JobConfigMuxStream {
  /// The container format. The default is `mp4`.
  final pulumi.Input<String>? container;
  /// List of ElementaryStream.key values multiplexed in this stream.
  final pulumi.Input<List<String>>? elementaryStreams;
  /// Identifier of the encryption configuration to use.
  final pulumi.Input<String>? encryptionId;
  /// The name of the generated file.
  final pulumi.Input<String>? fileName;
  /// A unique key for this multiplexed stream.
  final pulumi.Input<String>? key;
  /// Segment settings for ts, fmp4 and vtt.
  /// Structure is documented below.
  final pulumi.Input<JobConfigMuxStreamSegmentSettings>? segmentSettings;

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
      'segmentSettings': ?pulumi.Input.mapOptionalInputValue<JobConfigMuxStreamSegmentSettings, Map<String, dynamic>>(segmentSettings, (value) => value.toMap()),
    };
  }

  factory JobConfigMuxStream.fromMap(Map<String, dynamic> map) {
    return JobConfigMuxStream(
      container: map['container'] == null ? null : (map['container'] as String).input(),
      elementaryStreams: map['elementaryStreams'] == null ? null : ((map['elementaryStreams'] as List).cast<String>()).input(),
      encryptionId: map['encryptionId'] == null ? null : (map['encryptionId'] as String).input(),
      fileName: map['fileName'] == null ? null : (map['fileName'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      segmentSettings: map['segmentSettings'] == null ? null : (JobConfigMuxStreamSegmentSettings.fromMap((map['segmentSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

