// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// `File` containing source content.
class FileResponse {
  /// Textual Content.
  final pulumi.Input<String> content;
  /// Fingerprint (e.g. github sha) associated with the `File`.
  final pulumi.Input<String> fingerprint;
  /// File name.
  final pulumi.Input<String> name;

  /// Creates a new [FileResponse].
  /// [content] Textual Content.
  /// [fingerprint] Fingerprint (e.g. github sha) associated with the `File`.
  /// [name] File name.
  const FileResponse({
    required this.content,
    required this.fingerprint,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'fingerprint': fingerprint,
      'name': name,
    };
  }

  factory FileResponse.fromMap(Map<String, dynamic> map) {
    return FileResponse(
      content: pulumi.Input.fromValue(map['content'] as String),
      fingerprint: pulumi.Input.fromValue(map['fingerprint'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

