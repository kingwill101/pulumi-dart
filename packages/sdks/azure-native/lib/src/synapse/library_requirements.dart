// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Library requirements for a Big Data pool powered by Apache Spark
class LibraryRequirements {
  /// The library requirements.
  final pulumi.Input<String>? content;
  /// The filename of the library requirements file.
  final pulumi.Input<String>? filename;

  /// Creates a new [LibraryRequirements].
  /// [content] The library requirements.
  /// [filename] The filename of the library requirements file.
  LibraryRequirements({
    this.content,
    this.filename,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'filename': ?filename,
    };
  }

  factory LibraryRequirements.fromMap(Map<String, dynamic> map) {
    return LibraryRequirements(
      content: map['content'] == null ? null : (map['content']! as String).input(),
      filename: map['filename'] == null ? null : (map['filename']! as String).input(),
    );
  }
}

