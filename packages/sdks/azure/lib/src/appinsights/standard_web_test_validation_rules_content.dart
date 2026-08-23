// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StandardWebTestValidationRulesContent {
  /// A string value containing the content to match on.
  final pulumi.Input<String> contentMatch;
  /// Ignore the casing in the `contentMatch` value.
  final pulumi.Input<bool>? ignoreCase;
  /// If the content of `contentMatch` is found, pass the test. If set to `false`, the WebTest is failing if the content of `contentMatch` is found.
  final pulumi.Input<bool>? passIfTextFound;

  /// Creates a new [StandardWebTestValidationRulesContent].
  /// [contentMatch] A string value containing the content to match on.
  /// [ignoreCase] Ignore the casing in the `contentMatch` value.
  /// [passIfTextFound] If the content of `contentMatch` is found, pass the test. If set to `false`, the WebTest is failing if the content of `contentMatch` is found.
  const StandardWebTestValidationRulesContent({
    required this.contentMatch,
    this.ignoreCase,
    this.passIfTextFound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentMatch': contentMatch,
      'ignoreCase': ?ignoreCase,
      'passIfTextFound': ?passIfTextFound,
    };
  }

  factory StandardWebTestValidationRulesContent.fromMap(Map<String, dynamic> map) {
    return StandardWebTestValidationRulesContent(
      contentMatch: pulumi.Input.fromValue(map['contentMatch'] as String),
      ignoreCase: (() { final guardedValue = map['ignoreCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      passIfTextFound: (() { final guardedValue = map['passIfTextFound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
