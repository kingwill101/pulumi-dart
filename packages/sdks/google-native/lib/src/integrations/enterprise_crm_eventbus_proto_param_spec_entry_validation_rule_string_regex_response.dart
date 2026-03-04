// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rule used to validate strings.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse {
  /// Whether the regex matcher is applied exclusively (if true, matching values will be rejected).
  final pulumi.Input<bool> exclusive;

  /// The regex applied to the input value(s).
  final pulumi.Input<String> regex;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse].
  /// [exclusive] Whether the regex matcher is applied exclusively (if true, matching values will be rejected).
  /// [regex] The regex applied to the input value(s).
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse({
    required this.exclusive,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'exclusive': exclusive, 'regex': regex};
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegexResponse(
      exclusive: pulumi.Input.fromValue(map['exclusive'] as bool),
      regex: pulumi.Input.fromValue(map['regex'] as String),
    );
  }
}
