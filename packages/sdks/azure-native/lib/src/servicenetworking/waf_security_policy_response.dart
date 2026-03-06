// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Web Application Firewall Security Policy
class WafSecurityPolicyResponse {
  /// Resource ID of the Waf Security Policy
  final pulumi.Input<String> id;

  /// Creates a new [WafSecurityPolicyResponse].
  /// [id] Resource ID of the Waf Security Policy
  const WafSecurityPolicyResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory WafSecurityPolicyResponse.fromMap(Map<String, dynamic> map) {
    return WafSecurityPolicyResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

