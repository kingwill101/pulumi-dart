// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Web Application Firewall Security Policy
class WafSecurityPolicy {
  /// Resource ID of the Waf Security Policy
  final pulumi.Input<String> id;

  /// Creates a new [WafSecurityPolicy].
  /// [id] Resource ID of the Waf Security Policy
  const WafSecurityPolicy({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory WafSecurityPolicy.fromMap(Map<String, dynamic> map) {
    return WafSecurityPolicy(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

