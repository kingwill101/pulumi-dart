// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceAccessRulesOptionAccessRule {
  /// An array of IP address strings or CIDR ranges that this rule applies to.
  final pulumi.Input<List<String>> ipAddressRanges;
  /// A unique identifier for the access rule.
  final pulumi.Input<String> name;
  /// The squash mode for this specific rule. Currently, only "NO_SQUASH"
  /// is supported for exceptions. Possible values: ["NO_SQUASH"]
  final pulumi.Input<String> squashMode;

  /// Creates a new [GetInstanceAccessRulesOptionAccessRule].
  /// [ipAddressRanges] An array of IP address strings or CIDR ranges that this rule applies to.
  /// [name] A unique identifier for the access rule.
  /// [squashMode] The squash mode for this specific rule. Currently, only "NO_SQUASH"
  GetInstanceAccessRulesOptionAccessRule({
    required this.ipAddressRanges,
    required this.name,
    required this.squashMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressRanges': ipAddressRanges,
      'name': name,
      'squashMode': squashMode,
    };
  }

  factory GetInstanceAccessRulesOptionAccessRule.fromMap(Map<String, dynamic> map) {
    return GetInstanceAccessRulesOptionAccessRule(
      ipAddressRanges: ((map['ipAddressRanges'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      squashMode: (map['squashMode'] as String).input(),
    );
  }
}

