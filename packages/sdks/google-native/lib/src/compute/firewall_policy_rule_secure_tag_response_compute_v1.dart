// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyRuleSecureTagResponseComputeV1 {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final pulumi.Input<String> name;
  /// State of the secure tag, either `EFFECTIVE` or `INEFFECTIVE`. A secure tag is `INEFFECTIVE` when it is deleted or its network is deleted.
  final pulumi.Input<String> state;

  /// Creates a new [FirewallPolicyRuleSecureTagResponseComputeV1].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  /// [state] State of the secure tag, either `EFFECTIVE` or `INEFFECTIVE`. A secure tag is `INEFFECTIVE` when it is deleted or its network is deleted.
  FirewallPolicyRuleSecureTagResponseComputeV1({
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'state': state,
    };
  }

  factory FirewallPolicyRuleSecureTagResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleSecureTagResponseComputeV1(
      name: (map['name'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

