// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePersonality {
  /// The contents of the file. Limited to 255 bytes.
  final pulumi.Input<String> content;
  /// The absolute path of the destination file.
  final pulumi.Input<String> file;

  /// Creates a new [InstancePersonality].
  /// [content] The contents of the file. Limited to 255 bytes.
  /// [file] The absolute path of the destination file.
  InstancePersonality({
    required this.content,
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'file': file,
    };
  }

  factory InstancePersonality.fromMap(Map<String, dynamic> map) {
    return InstancePersonality(
      content: (map['content'] as String).input(),
      file: (map['file'] as String).input(),
    );
  }
}

