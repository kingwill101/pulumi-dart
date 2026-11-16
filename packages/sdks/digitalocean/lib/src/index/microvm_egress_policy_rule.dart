// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MicrovmEgressPolicyRule {
  /// An exact host such as `api.example.com`, or a wildcard such as `*.example.com`.
  final pulumi.Input<String?>? domain;
  /// An exact IP address. CIDR ranges are not supported.
  final pulumi.Input<String?>? ip;

  /// Creates a new [MicrovmEgressPolicyRule].
  /// [domain] An exact host such as `api.example.com`, or a wildcard such as `*.example.com`.
  /// [ip] An exact IP address. CIDR ranges are not supported.
  const MicrovmEgressPolicyRule({
    this.domain,
    this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'ip': ?ip,
    };
  }

  factory MicrovmEgressPolicyRule.fromMap(Map<String, dynamic> map) {
    return MicrovmEgressPolicyRule(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
