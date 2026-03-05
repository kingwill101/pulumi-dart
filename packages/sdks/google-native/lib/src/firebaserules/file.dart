// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// `File` containing source content.
class File {
  /// Textual Content.
  final pulumi.Input<String> content;
  /// Fingerprint (e.g. github sha) associated with the `File`.
  final pulumi.Input<String>? fingerprint;
  /// File name.
  final pulumi.Input<String> name;

  /// Creates a new [File].
  /// [content] Textual Content.
  /// [fingerprint] Fingerprint (e.g. github sha) associated with the `File`.
  /// [name] File name.
  File({
    required this.content,
    this.fingerprint,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'fingerprint': ?fingerprint,
      'name': name,
    };
  }

  factory File.fromMap(Map<String, dynamic> map) {
    return File(
      content: pulumi.Input.fromValue(map['content'] as String),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

