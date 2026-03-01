// ignore_for_file: unused_element, unnecessary_cast


class SparkPoolLibraryRequirement {
  /// The content of library requirements.
  final String content;
  /// The name of the library requirements file.
  final String filename;

  /// Creates a new [SparkPoolLibraryRequirement].
  /// [content] The content of library requirements.
  /// [filename] The name of the library requirements file.
  SparkPoolLibraryRequirement({
    required this.content,
    required this.filename,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'filename': filename,
    };
  }

  factory SparkPoolLibraryRequirement.fromMap(Map<String, dynamic> map) {
    return SparkPoolLibraryRequirement(
      content: map['content'] as String,
      filename: map['filename'] as String,
    );
  }
}

