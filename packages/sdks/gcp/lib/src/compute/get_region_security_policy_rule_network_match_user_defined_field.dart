// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField {
  /// The name of the Region Security Policy.
  final pulumi.Input<String> name;
  /// Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with "0x") number (e.g. "64") or range (e.g. "0x400-0x7ff").
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField].
  /// [name] The name of the Region Security Policy.
  /// [values] Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with "0x") number (e.g. "64") or range (e.g. "0x400-0x7ff").
  const GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRuleNetworkMatchUserDefinedField(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

