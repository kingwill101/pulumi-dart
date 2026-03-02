// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The language extension object.
class LanguageExtensionResponse {
  /// The language extension name.
  final pulumi.Input<String>? languageExtensionName;

  /// Creates a new [LanguageExtensionResponse].
  /// [languageExtensionName] The language extension name.
  LanguageExtensionResponse({
    this.languageExtensionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageExtensionName': ?languageExtensionName,
    };
  }

  factory LanguageExtensionResponse.fromMap(Map<String, dynamic> map) {
    return LanguageExtensionResponse(
      languageExtensionName: map['languageExtensionName'] == null ? null : (map['languageExtensionName'] as String).input(),
    );
  }
}

