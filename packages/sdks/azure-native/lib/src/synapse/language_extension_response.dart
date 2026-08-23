// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The language extension object.
class LanguageExtensionResponse {
  /// The language extension name.
  final pulumi.Input<String>? languageExtensionName;

  /// Creates a new [LanguageExtensionResponse].
  /// [languageExtensionName] The language extension name.
  const LanguageExtensionResponse({
    this.languageExtensionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageExtensionName': ?languageExtensionName,
    };
  }

  factory LanguageExtensionResponse.fromMap(Map<String, dynamic> map) {
    return LanguageExtensionResponse(
      languageExtensionName: (() { final guardedValue = map['languageExtensionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
