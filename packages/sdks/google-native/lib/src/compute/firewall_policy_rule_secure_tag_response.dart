// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyRuleSecureTagResponse {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final pulumi.Input<String> name;
  /// State of the secure tag, either `EFFECTIVE` or `INEFFECTIVE`. A secure tag is `INEFFECTIVE` when it is deleted or its network is deleted.
  final pulumi.Input<String> state;

  /// Creates a new [FirewallPolicyRuleSecureTagResponse].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  /// [state] State of the secure tag, either `EFFECTIVE` or `INEFFECTIVE`. A secure tag is `INEFFECTIVE` when it is deleted or its network is deleted.
  FirewallPolicyRuleSecureTagResponse({
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'state': state,
    };
  }

  factory FirewallPolicyRuleSecureTagResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleSecureTagResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

