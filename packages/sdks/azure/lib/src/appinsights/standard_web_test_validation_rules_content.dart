// ignore_for_file: unused_element, unnecessary_cast


class StandardWebTestValidationRulesContent {
  /// A string value containing the content to match on.
  final String contentMatch;
  /// Ignore the casing in the `content_match` value.
  final bool? ignoreCase;
  /// If the content of `content_match` is found, pass the test. If set to `false`, the WebTest is failing if the content of `content_match` is found.
  final bool? passIfTextFound;

  /// Creates a new [StandardWebTestValidationRulesContent].
  /// [contentMatch] A string value containing the content to match on.
  /// [ignoreCase] Ignore the casing in the `content_match` value.
  /// [passIfTextFound] If the content of `content_match` is found, pass the test. If set to `false`, the WebTest is failing if the content of `content_match` is found.
  StandardWebTestValidationRulesContent({
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
      contentMatch: map['contentMatch'] as String,
      ignoreCase: map['ignoreCase'] == null ? null : map['ignoreCase'] as bool,
      passIfTextFound: map['passIfTextFound'] == null ? null : map['passIfTextFound'] as bool,
    );
  }
}

