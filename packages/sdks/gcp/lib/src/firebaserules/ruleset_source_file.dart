// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetSourceFile {
  /// Textual Content.
  final pulumi.Input<String> content;
  /// Fingerprint (e.g. github sha) associated with the `File`.
  final pulumi.Input<String>? fingerprint;
  /// File name.
  final pulumi.Input<String> name;

  /// Creates a new [RulesetSourceFile].
  /// [content] Textual Content.
  /// [fingerprint] Fingerprint (e.g. github sha) associated with the `File`.
  /// [name] File name.
  RulesetSourceFile({
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

  factory RulesetSourceFile.fromMap(Map<String, dynamic> map) {
    return RulesetSourceFile(
      content: (map['content'] as String).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

