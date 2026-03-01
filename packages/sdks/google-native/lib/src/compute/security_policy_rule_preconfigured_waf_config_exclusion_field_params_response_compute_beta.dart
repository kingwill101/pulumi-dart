// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta {
  /// The match operator for the field.
  final String op;
  /// The value of the field.
  final String val;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta].
  /// [op] The match operator for the field.
  /// [val] The value of the field.
  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta({
    required this.op,
    required this.val,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'op': op,
      'val': val,
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta(
      op: map['op'] as String,
      val: map['val'] as String,
    );
  }
}

