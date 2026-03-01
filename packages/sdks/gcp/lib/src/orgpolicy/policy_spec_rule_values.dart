// ignore_for_file: unused_element, unnecessary_cast


class PolicySpecRuleValues {
  /// List of values allowed at this resource.
  final List<String>? allowedValues;
  /// List of values denied at this resource.
  final List<String>? deniedValues;

  /// Creates a new [PolicySpecRuleValues].
  /// [allowedValues] List of values allowed at this resource.
  /// [deniedValues] List of values denied at this resource.
  PolicySpecRuleValues({
    this.allowedValues,
    this.deniedValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?allowedValues,
      'deniedValues': ?deniedValues,
    };
  }

  factory PolicySpecRuleValues.fromMap(Map<String, dynamic> map) {
    return PolicySpecRuleValues(
      allowedValues: map['allowedValues'] == null ? null : (map['allowedValues'] as List).cast<String>(),
      deniedValues: map['deniedValues'] == null ? null : (map['deniedValues'] as List).cast<String>(),
    );
  }
}

