// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageShieldedInstanceInitialStateDbx {
  /// The raw content in the secure keys file.
  /// A base64-encoded string.
  final pulumi.Input<String> content;
  /// The file type of source file.
  final pulumi.Input<String>? fileType;

  /// Creates a new [ImageShieldedInstanceInitialStateDbx].
  /// [content] The raw content in the secure keys file.
  /// [fileType] The file type of source file.
  ImageShieldedInstanceInitialStateDbx({
    required this.content,
    this.fileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'fileType': ?fileType,
    };
  }

  factory ImageShieldedInstanceInitialStateDbx.fromMap(Map<String, dynamic> map) {
    return ImageShieldedInstanceInitialStateDbx(
      content: (map['content'] as String).input(),
      fileType: map['fileType'] == null ? null : (map['fileType']! as String).input(),
    );
  }
}

