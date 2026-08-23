// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerUpload {
  /// Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text. Conflicts with `contentBase64` & `source`
  final pulumi.Input<String>? content;
  /// Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for larger binary content such as the result of the `base64encode` interpolation function. See here for the reason. Conflicts with `content` & `source`
  final pulumi.Input<String>? contentBase64;
  /// If `true`, the file will be uploaded with user executable permission. Defaults to `false`.
  final pulumi.Input<bool>? executable;
  /// Path to the file in the container where is upload goes to
  final pulumi.Input<String> file;
  /// The permission mode for the file in the container. Has precedence over `executable`.
  final pulumi.Input<String>? permissions;
  /// A filename that references a file which will be uploaded as the object content. This allows for large file uploads that do not get stored in state. Conflicts with `content` & `contentBase64`
  final pulumi.Input<String>? source;
  /// If using `source`, this will force an update if the file content has updated but the filename has not.
  final pulumi.Input<String>? sourceHash;

  /// Creates a new [ContainerUpload].
  /// [content] Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text. Conflicts with `contentBase64` & `source`
  /// [contentBase64] Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for larger binary content such as the result of the `base64encode` interpolation function. See here for the reason. Conflicts with `content` & `source`
  /// [executable] If `true`, the file will be uploaded with user executable permission. Defaults to `false`.
  /// [file] Path to the file in the container where is upload goes to
  /// [permissions] The permission mode for the file in the container. Has precedence over `executable`.
  /// [source] A filename that references a file which will be uploaded as the object content. This allows for large file uploads that do not get stored in state. Conflicts with `content` & `contentBase64`
  /// [sourceHash] If using `source`, this will force an update if the file content has updated but the filename has not.
  const ContainerUpload({
    this.content,
    this.contentBase64,
    this.executable,
    required this.file,
    this.permissions,
    this.source,
    this.sourceHash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'contentBase64': ?contentBase64,
      'executable': ?executable,
      'file': file,
      'permissions': ?permissions,
      'source': ?source,
      'sourceHash': ?sourceHash,
    };
  }

  factory ContainerUpload.fromMap(Map<String, dynamic> map) {
    return ContainerUpload(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentBase64: (() { final guardedValue = map['contentBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executable: (() { final guardedValue = map['executable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      file: pulumi.Input.fromValue(map['file'] as String),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceHash: (() { final guardedValue = map['sourceHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
