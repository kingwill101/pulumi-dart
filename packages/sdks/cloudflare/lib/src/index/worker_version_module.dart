// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerVersionModule {
  /// The base64-encoded module content.
  final pulumi.Input<String?>? contentBase64;
  /// The file path of the module content.
  final pulumi.Input<String?>? contentFile;
  /// The SHA-256 hash of the module content.
  final pulumi.Input<String?>? contentSha256;
  /// The content type of the module.
  final pulumi.Input<String> contentType;
  /// The name of the module.
  final pulumi.Input<String> name;

  /// Creates a new [WorkerVersionModule].
  /// [contentBase64] The base64-encoded module content.
  /// [contentFile] The file path of the module content.
  /// [contentSha256] The SHA-256 hash of the module content.
  /// [contentType] The content type of the module.
  /// [name] The name of the module.
  const WorkerVersionModule({
    this.contentBase64,
    this.contentFile,
    this.contentSha256,
    required this.contentType,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentBase64': ?contentBase64,
      'contentFile': ?contentFile,
      'contentSha256': ?contentSha256,
      'contentType': contentType,
      'name': name,
    };
  }

  factory WorkerVersionModule.fromMap(Map<String, dynamic> map) {
    return WorkerVersionModule(
      contentBase64: (() { final guardedValue = map['contentBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentFile: (() { final guardedValue = map['contentFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentSha256: (() { final guardedValue = map['contentSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
