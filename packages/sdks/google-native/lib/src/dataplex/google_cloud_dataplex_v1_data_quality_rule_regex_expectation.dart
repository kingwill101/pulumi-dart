// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Evaluates whether each column value matches a specified regex.
class GoogleCloudDataplexV1DataQualityRuleRegexExpectation {
  /// Optional. A regular expression the column value is expected to match.
  final pulumi.Input<String>? regex;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleRegexExpectation].
  /// [regex] Optional. A regular expression the column value is expected to match.
  const GoogleCloudDataplexV1DataQualityRuleRegexExpectation({
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': ?regex,
    };
  }

  factory GoogleCloudDataplexV1DataQualityRuleRegexExpectation.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleRegexExpectation(
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
