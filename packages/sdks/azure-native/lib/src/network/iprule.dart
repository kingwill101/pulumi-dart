// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IPRule {
  /// Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
  final pulumi.Input<String>? addressPrefix;

  /// Creates a new [IPRule].
  /// [addressPrefix] Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
  IPRule({
    this.addressPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
    };
  }

  factory IPRule.fromMap(Map<String, dynamic> map) {
    return IPRule(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

