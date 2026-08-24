// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpCustomEntryPattern {
  final pulumi.Input<String> regex;
  /// Available values: "luhn".
  final pulumi.Input<String?>? validation;

  /// Creates a new [ZeroTrustDlpCustomEntryPattern].
  /// [regex] Required.
  /// [validation] Available values: "luhn".
  const ZeroTrustDlpCustomEntryPattern({
    required this.regex,
    this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': regex,
      'validation': ?validation,
    };
  }

  factory ZeroTrustDlpCustomEntryPattern.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpCustomEntryPattern(
      regex: pulumi.Input.fromValue(map['regex'] as String),
      validation: (() { final guardedValue = map['validation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
