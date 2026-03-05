// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to a file, used for user inputs.
class FileReferenceResponse {
  /// A path to a file in Google Cloud Storage. Example: gs://build-app-1414623860166/app%40debug-unaligned.apk These paths are expected to be url encoded (percent encoding)
  final pulumi.Input<String> gcsPath;

  /// Creates a new [FileReferenceResponse].
  /// [gcsPath] A path to a file in Google Cloud Storage. Example: gs://build-app-1414623860166/app%40debug-unaligned.apk These paths are expected to be url encoded (percent encoding)
  FileReferenceResponse({
    required this.gcsPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsPath': gcsPath,
    };
  }

  factory FileReferenceResponse.fromMap(Map<String, dynamic> map) {
    return FileReferenceResponse(
      gcsPath: pulumi.Input.fromValue(map['gcsPath'] as String),
    );
  }
}

