// ignore_for_file: unused_element, unnecessary_cast

import 'dash_config.dart';
import 'manifest_type.dart';

/// Manifest configuration.
class Manifest {
  /// `DASH` manifest configuration.
  final DashConfig? dash;
  /// The name of the generated file. The default is `manifest` with the extension suffix corresponding to the Manifest.type.
  final String? fileName;
  /// List of user supplied MuxStream.key values that should appear in this manifest. When Manifest.type is `HLS`, a media manifest with name MuxStream.key and `.m3u8` extension is generated for each element in this list.
  final List<String> muxStreams;
  /// Type of the manifest.
  final ManifestType type;

  /// Creates a new [Manifest].
  /// [dash] `DASH` manifest configuration.
  /// [fileName] The name of the generated file. The default is `manifest` with the extension suffix corresponding to the Manifest.type.
  /// [muxStreams] List of user supplied MuxStream.key values that should appear in this manifest. When Manifest.type is `HLS`, a media manifest with name MuxStream.key and `.m3u8` extension is generated for each element in this list.
  /// [type] Type of the manifest.
  Manifest({
    this.dash,
    this.fileName,
    required this.muxStreams,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dash': ?dash == null ? null : dash!.toMap(),
      'fileName': ?fileName,
      'muxStreams': muxStreams,
      'type': type.value,
    };
  }

  factory Manifest.fromMap(Map<String, dynamic> map) {
    return Manifest(
      dash: map['dash'] == null ? null : DashConfig.fromMap((map['dash'] as Map).cast<String, dynamic>()),
      fileName: map['fileName'] == null ? null : map['fileName'] as String,
      muxStreams: (map['muxStreams'] as List).cast<String>(),
      type: ManifestType.fromValue(map['type'] as String),
    );
  }
}

