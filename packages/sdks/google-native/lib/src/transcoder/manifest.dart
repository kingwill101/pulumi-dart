// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dash_config.dart';
import 'manifest_type.dart';

/// Manifest configuration.
class Manifest {
  /// `DASH` manifest configuration.
  final pulumi.Input<DashConfig>? dash;
  /// The name of the generated file. The default is `manifest` with the extension suffix corresponding to the Manifest.type.
  final pulumi.Input<String>? fileName;
  /// List of user supplied MuxStream.key values that should appear in this manifest. When Manifest.type is `HLS`, a media manifest with name MuxStream.key and `.m3u8` extension is generated for each element in this list.
  final pulumi.Input<List<String>> muxStreams;
  /// Type of the manifest.
  final pulumi.Input<ManifestType> type;

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
      'dash': ?pulumi.Input.mapOptionalInputValue<DashConfig, Map<String, dynamic>>(dash, (value) => value.toMap()),
      'fileName': ?fileName,
      'muxStreams': muxStreams,
      'type': pulumi.Input.mapInputValue<ManifestType, String>(type, (value) => value.wireValue),
    };
  }

  factory Manifest.fromMap(Map<String, dynamic> map) {
    return Manifest(
      dash: (() { final guardedValue = map['dash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileName: (() { final guardedValue = map['fileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      muxStreams: pulumi.Input.fromValue((map['muxStreams'] as List).cast<String>()),
      type: pulumi.Input.fromValue(ManifestType.fromValue(map['type']! as String)),
    );
  }
}

