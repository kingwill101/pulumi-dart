// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImportFile {
  /// The contents of the file.
  final pulumi.Input<String>? content;
  /// The name of the file.
  final pulumi.Input<String>? name;

  /// Creates a new [ImportFile].
  /// [content] The contents of the file.
  /// [name] The name of the file.
  const ImportFile({
    this.content,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'name': ?name,
    };
  }

  factory ImportFile.fromMap(Map<String, dynamic> map) {
    return ImportFile(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
