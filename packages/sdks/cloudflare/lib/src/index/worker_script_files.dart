// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerScriptFiles {
  /// Base64-encoded file content.
  final pulumi.Input<String?>? contentBase64;
  /// Path to the file content.
  final pulumi.Input<String?>? contentFile;
  /// SHA-256 hash of the file content, used to detect changes and remote drift.
  final pulumi.Input<String?>? contentSha256;
  /// Content type of the file, such as `application/wasm`, `text/plain`, or `application/octet-stream`.
  final pulumi.Input<String> contentType;

  /// Creates a new [WorkerScriptFiles].
  /// [contentBase64] Base64-encoded file content.
  /// [contentFile] Path to the file content.
  /// [contentSha256] SHA-256 hash of the file content, used to detect changes and remote drift.
  /// [contentType] Content type of the file, such as `application/wasm`, `text/plain`, or `application/octet-stream`.
  const WorkerScriptFiles({
    this.contentBase64,
    this.contentFile,
    this.contentSha256,
    required this.contentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentBase64': ?contentBase64,
      'contentFile': ?contentFile,
      'contentSha256': ?contentSha256,
      'contentType': contentType,
    };
  }

  factory WorkerScriptFiles.fromMap(Map<String, dynamic> map) {
    return WorkerScriptFiles(
      contentBase64: (() { final guardedValue = map['contentBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentFile: (() { final guardedValue = map['contentFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentSha256: (() { final guardedValue = map['contentSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
    );
  }
}
