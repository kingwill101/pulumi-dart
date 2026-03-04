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
      'segmentSettings':
          ?pulumi.Input.mapOptionalInputValue<
            JobConfigMuxStreamSegmentSettings,
            Map<String, dynamic>
          >(segmentSettings, (value) => value.toMap()),
    };
  }

  factory JobConfigMuxStream.fromMap(Map<String, dynamic> map) {
    return JobConfigMuxStream(
      container: (() {
        final guardedValue = map['container'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      elementaryStreams: (() {
        final guardedValue = map['elementaryStreams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      encryptionId: (() {
        final guardedValue = map['encryptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileName: (() {
        final guardedValue = map['fileName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      segmentSettings: (() {
        final guardedValue = map['segmentSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobConfigMuxStreamSegmentSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
