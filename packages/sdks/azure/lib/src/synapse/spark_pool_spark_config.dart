// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SparkPoolSparkConfig {
  /// The contents of a spark configuration.
  final pulumi.Input<String> content;
  /// The name of the file where the spark configuration `content` will be stored.
  final pulumi.Input<String> filename;

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
      content: pulumi.Input.fromValue(map['content'] as String),
      filename: pulumi.Input.fromValue(map['filename'] as String),
    );
  }
}

