// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionSecurityPolicyRuleNetworkMatchUserDefinedField {
  /// Name of the user-defined field, as given in the definition.
  final pulumi.Input<String>? name;
  /// Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with "0x") number (e.g. "64") or range (e.g. "0x400-0x7ff").
  final pulumi.Input<List<String>>? values;

  /// Creates a new [RegionSecurityPolicyRuleNetworkMatchUserDefinedField].
  /// [name] Name of the user-defined field, as given in the definition.
  /// [values] Matching values of the field. Each element can be a 32-bit unsigned decimal or hexadecimal (starting with "0x") number (e.g. "64") or range (e.g. "0x400-0x7ff").
  RegionSecurityPolicyRuleNetworkMatchUserDefinedField({
    this.name,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'values': ?values,
    };
  }

  factory RegionSecurityPolicyRuleNetworkMatchUserDefinedField.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyRuleNetworkMatchUserDefinedField(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

