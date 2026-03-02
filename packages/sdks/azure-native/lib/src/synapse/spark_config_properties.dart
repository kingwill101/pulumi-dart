// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SparkConfig Properties for a Big Data pool powered by Apache Spark
class SparkConfigProperties {
  /// The type of the spark config properties file.
  final pulumi.Input<String>? configurationType;
  /// The spark config properties.
  final pulumi.Input<String>? content;
  /// The filename of the spark config properties file.
  final pulumi.Input<String>? filename;

  /// Creates a new [SparkConfigProperties].
  /// [configurationType] The type of the spark config properties file.
  /// [content] The spark config properties.
  /// [filename] The filename of the spark config properties file.
  SparkConfigProperties({
    this.configurationType,
    this.content,
    this.filename,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationType': ?configurationType,
      'content': ?content,
      'filename': ?filename,
    };
  }

  factory SparkConfigProperties.fromMap(Map<String, dynamic> map) {
    return SparkConfigProperties(
      configurationType: map['configurationType'] == null ? null : (map['configurationType'] as String).input(),
      content: map['content'] == null ? null : (map['content'] as String).input(),
      filename: map['filename'] == null ? null : (map['filename'] as String).input(),
    );
  }
}

