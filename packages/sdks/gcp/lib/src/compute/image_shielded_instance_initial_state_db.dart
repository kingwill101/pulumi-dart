// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageShieldedInstanceInitialStateDb {
  /// The raw content in the secure keys file.
  /// A base64-encoded string.
  final pulumi.Input<String> content;
  /// The file type of source file.
  final pulumi.Input<String>? fileType;

  /// Creates a new [ImageShieldedInstanceInitialStateDb].
  /// [content] The raw content in the secure keys file.
  /// [fileType] The file type of source file.
  ImageShieldedInstanceInitialStateDb({
    required this.content,
    this.fileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'fileType': ?fileType,
    };
  }

  factory ImageShieldedInstanceInitialStateDb.fromMap(Map<String, dynamic> map) {
    return ImageShieldedInstanceInitialStateDb(
      content: pulumi.Input.fromValue(map['content'] as String),
      fileType: (() { final guardedValue = map['fileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

