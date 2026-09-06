// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SparkConfig Properties for a Big Data pool powered by Apache Spark
class SparkConfigPropertiesResponse {
  /// The type of the spark config properties file.
  final pulumi.Input<String?>? configurationType;
  /// The spark config properties.
  final pulumi.Input<String?>? content;
  /// The filename of the spark config properties file.
  final pulumi.Input<String?>? filename;
  /// The last update time of the spark config properties file.
  final pulumi.Input<String> time;

  /// Creates a new [SparkConfigPropertiesResponse].
  /// [configurationType] The type of the spark config properties file.
  /// [content] The spark config properties.
  /// [filename] The filename of the spark config properties file.
  /// [time] The last update time of the spark config properties file.
  const SparkConfigPropertiesResponse({
    this.configurationType,
    this.content,
    this.filename,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationType': ?configurationType,
      'content': ?content,
      'filename': ?filename,
      'time': time,
    };
  }

  factory SparkConfigPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SparkConfigPropertiesResponse(
      configurationType: (() { final guardedValue = map['configurationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filename: (() { final guardedValue = map['filename']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}
