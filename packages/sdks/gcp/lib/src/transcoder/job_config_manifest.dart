// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobConfigManifest {
  /// The name of the generated file. The default is `manifest`.
  final pulumi.Input<String>? fileName;

  /// List of user supplied MuxStream.key values that should appear in this manifest.
  final pulumi.Input<List<String>>? muxStreams;

  /// Type of the manifest.
  /// Possible values are: `MANIFEST_TYPE_UNSPECIFIED`, `HLS`, `DASH`.
  final pulumi.Input<String>? type;

  /// Creates a new [JobConfigManifest].
  /// [fileName] The name of the generated file. The default is `manifest`.
  /// [muxStreams] List of user supplied MuxStream.key values that should appear in this manifest.
  /// [type] Type of the manifest.
  JobConfigManifest({this.fileName, this.muxStreams, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileName': ?fileName,
      'muxStreams': ?muxStreams,
      'type': ?type,
    };
  }

  factory JobConfigManifest.fromMap(Map<String, dynamic> map) {
    return JobConfigManifest(
      fileName: (() {
        final guardedValue = map['fileName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      muxStreams: (() {
        final guardedValue = map['muxStreams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
