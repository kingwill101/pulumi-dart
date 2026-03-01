// ignore_for_file: unused_element, unnecessary_cast


class SparkPoolSparkConfig {
  /// The contents of a spark configuration.
  final String content;
  /// The name of the file where the spark configuration `content` will be stored.
  final String filename;

  /// Creates a new [SparkPoolSparkConfig].
  /// [content] The contents of a spark configuration.
  /// [filename] The name of the file where the spark configuration `content` will be stored.
  SparkPoolSparkConfig({
    required this.content,
    required this.filename,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'filename': filename,
    };
  }

  factory SparkPoolSparkConfig.fromMap(Map<String, dynamic> map) {
    return SparkPoolSparkConfig(
      content: map['content'] as String,
      filename: map['filename'] as String,
    );
  }
}

