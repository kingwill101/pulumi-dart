// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Library requirements for a Big Data pool powered by Apache Spark
class LibraryRequirementsResponse {
  /// The library requirements.
  final pulumi.Input<String>? content;
  /// The filename of the library requirements file.
  final pulumi.Input<String>? filename;
  /// The last update time of the library requirements file.
  final pulumi.Input<String> time;

  /// Creates a new [LibraryRequirementsResponse].
  /// [content] The library requirements.
  /// [filename] The filename of the library requirements file.
  /// [time] The last update time of the library requirements file.
  LibraryRequirementsResponse({
    this.content,
    this.filename,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'filename': ?filename,
      'time': time,
    };
  }

  factory LibraryRequirementsResponse.fromMap(Map<String, dynamic> map) {
    return LibraryRequirementsResponse(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filename: (() { final guardedValue = map['filename']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}

