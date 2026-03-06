// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Web Application Firewall Policy
class WafPolicyResponse {
  /// Resource ID of the WAF
  final pulumi.Input<String> id;

  /// Creates a new [WafPolicyResponse].
  /// [id] Resource ID of the WAF
  const WafPolicyResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory WafPolicyResponse.fromMap(Map<String, dynamic> map) {
    return WafPolicyResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

