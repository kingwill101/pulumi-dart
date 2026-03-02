// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dash_config_response.dart';

/// Manifest configuration.
class ManifestResponse {
  /// `DASH` manifest configuration.
  final pulumi.Input<DashConfigResponse> dash;
  /// The name of the generated file. The default is `manifest` with the extension suffix corresponding to the Manifest.type.
  final pulumi.Input<String> fileName;
  /// List of user supplied MuxStream.key values that should appear in this manifest. When Manifest.type is `HLS`, a media manifest with name MuxStream.key and `.m3u8` extension is generated for each element in this list.
  final pulumi.Input<List<String>> muxStreams;
  /// Type of the manifest.
  final pulumi.Input<String> type;

  /// Creates a new [ManifestResponse].
  /// [dash] `DASH` manifest configuration.
  /// [fileName] The name of the generated file. The default is `manifest` with the extension suffix corresponding to the Manifest.type.
  /// [muxStreams] List of user supplied MuxStream.key values that should appear in this manifest. When Manifest.type is `HLS`, a media manifest with name MuxStream.key and `.m3u8` extension is generated for each element in this list.
  /// [type] Type of the manifest.
  ManifestResponse({
    required this.dash,
    required this.fileName,
    required this.muxStreams,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dash': pulumi.Input.mapInputValue<DashConfigResponse, Map<String, dynamic>>(dash, (value) => value.toMap()),
      'fileName': fileName,
      'muxStreams': muxStreams,
      'type': type,
    };
  }

  factory ManifestResponse.fromMap(Map<String, dynamic> map) {
    return ManifestResponse(
      dash: (DashConfigResponse.fromMap((map['dash'] as Map).cast<String, dynamic>())).input(),
      fileName: (map['fileName'] as String).input(),
      muxStreams: ((map['muxStreams'] as List).cast<String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

