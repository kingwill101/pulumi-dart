// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceAccessRulesOptionsAccessRule {
  /// The IP address ranges to which to apply this access rule. Accepts
  /// non-overlapping CIDR ranges (e.g., `192.168.1.0/24`) and IP addresses
  /// (e.g., `192.168.1.0`).
  final pulumi.Input<List<String>> ipAddressRanges;
  /// The name of the access rule policy group.
  /// Must be 16 characters or less and include only alphanumeric characters
  /// or '_'.
  final pulumi.Input<String> name;
  /// Squash mode for the access rule.
  /// Possible values:
  /// NO_SQUASH
  /// ROOT_SQUASH
  final pulumi.Input<String> squashMode;

  /// Creates a new [InstanceAccessRulesOptionsAccessRule].
  /// [ipAddressRanges] The IP address ranges to which to apply this access rule. Accepts
  /// [name] The name of the access rule policy group.
  /// [squashMode] Squash mode for the access rule.
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
