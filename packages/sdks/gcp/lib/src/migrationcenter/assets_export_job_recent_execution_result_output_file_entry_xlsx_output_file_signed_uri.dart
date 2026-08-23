// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFileSignedUri {
  /// (Output)
  /// Name of the file the Signed URI references.
  final pulumi.Input<String>? file;
  /// (Output)
  /// Download URI for the file.
  final pulumi.Input<String>? uri;

  /// Creates a new [AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFileSignedUri].
  /// [file] (Output)
  /// [uri] (Output)
  const AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFileSignedUri({
    this.file,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': ?file,
      'uri': ?uri,
    };
  }

  factory AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFileSignedUri.fromMap(Map<String, dynamic> map) {
    return AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFileSignedUri(
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
