// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceAccessRulesOptionsAccessRule {
  /// An array of IP address strings or CIDR ranges that this rule applies to.
  final pulumi.Input<List<String>> ipAddressRanges;
  /// A unique identifier for the access rule.
  final pulumi.Input<String> name;
  /// The squash mode for this specific rule. Currently, only "NO_SQUASH"
  /// is supported for exceptions.
  /// Possible values are: `NO_SQUASH`.
  final pulumi.Input<String> squashMode;

  /// Creates a new [InstanceAccessRulesOptionsAccessRule].
  /// [ipAddressRanges] An array of IP address strings or CIDR ranges that this rule applies to.
  /// [name] A unique identifier for the access rule.
  /// [squashMode] The squash mode for this specific rule. Currently, only "NO_SQUASH"
  const InstanceAccessRulesOptionsAccessRule({
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

  factory InstanceAccessRulesOptionsAccessRule.fromMap(Map<String, dynamic> map) {
    return InstanceAccessRulesOptionsAccessRule(
      ipAddressRanges: pulumi.Input.fromValue((map['ipAddressRanges'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      squashMode: pulumi.Input.fromValue(map['squashMode'] as String),
    );
  }
}

