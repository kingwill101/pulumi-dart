// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fmp4_config.dart';
import 'segment_settings.dart';

/// Multiplexing settings for output stream.
class MuxStream {
  /// The container format. The default is `mp4` Supported container formats: - `ts` - `fmp4`- the corresponding file extension is `.m4s` - `mp4` - `vtt` See also: [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats)
  final pulumi.Input<String>? container;
  /// List of ElementaryStream.key values multiplexed in this stream.
  final pulumi.Input<List<String>>? elementaryStreams;
  /// Identifier of the encryption configuration to use. If omitted, output will be unencrypted.
  final pulumi.Input<String>? encryptionId;
  /// The name of the generated file. The default is MuxStream.key with the extension suffix corresponding to the MuxStream.container. Individual segments also have an incremental 10-digit zero-padded suffix starting from 0 before the extension, such as `mux_stream0000000123.ts`.
  final pulumi.Input<String>? fileName;
  /// Optional. `fmp4` container configuration.
  final pulumi.Input<Fmp4Config>? fmp4;
  /// A unique key for this multiplexed stream.
  final pulumi.Input<String>? key;
  /// Segment settings for `ts`, `fmp4` and `vtt`.
  final pulumi.Input<SegmentSettings>? segmentSettings;

  /// Creates a new [MuxStream].
  /// [container] The container format. The default is `mp4` Supported container formats: - `ts` - `fmp4`- the corresponding file extension is `.m4s` - `mp4` - `vtt` See also: [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats)
  /// [elementaryStreams] List of ElementaryStream.key values multiplexed in this stream.
  /// [encryptionId] Identifier of the encryption configuration to use. If omitted, output will be unencrypted.
  /// [fileName] The name of the generated file. The default is MuxStream.key with the extension suffix corresponding to the MuxStream.container. Individual segments also have an incremental 10-digit zero-padded suffix starting from 0 before the extension, such as `mux_stream0000000123.ts`.
  /// [fmp4] Optional. `fmp4` container configuration.
  /// [key] A unique key for this multiplexed stream.
  /// [segmentSettings] Segment settings for `ts`, `fmp4` and `vtt`.
  const MuxStream({
    this.container,
    this.elementaryStreams,
    this.encryptionId,
    this.fileName,
    this.fmp4,
    this.key,
    this.segmentSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?container,
      'elementaryStreams': ?elementaryStreams,
      'encryptionId': ?encryptionId,
      'fileName': ?fileName,
      'fmp4': ?pulumi.Input.mapOptionalInputValue<Fmp4Config, Map<String, dynamic>>(fmp4, (value) => value.toMap()),
      'key': ?key,
      'segmentSettings': ?pulumi.Input.mapOptionalInputValue<SegmentSettings, Map<String, dynamic>>(segmentSettings, (value) => value.toMap()),
    };
  }

  factory MuxStream.fromMap(Map<String, dynamic> map) {
    return MuxStream(
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elementaryStreams: (() { final guardedValue = map['elementaryStreams']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      encryptionId: (() { final guardedValue = map['encryptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileName: (() { final guardedValue = map['fileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fmp4: (() { final guardedValue = map['fmp4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Fmp4Config.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentSettings: (() { final guardedValue = map['segmentSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SegmentSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
