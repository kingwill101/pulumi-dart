// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FastHttpsAppWafSecurityPolicy {
  /// Setting `true` will enable FAST to create WAF Security Policy.
  final pulumi.Input<bool> enable;

  /// Creates a new [FastHttpsAppWafSecurityPolicy].
  /// [enable] Setting `true` will enable FAST to create WAF Security Policy.
  FastHttpsAppWafSecurityPolicy({
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
    };
  }

  factory FastHttpsAppWafSecurityPolicy.fromMap(Map<String, dynamic> map) {
    return FastHttpsAppWafSecurityPolicy(
      enable: pulumi.Input.fromValue(map['enable'] as bool),
    );
  }
}

