// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IPRuleResponse {
  /// Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
  final pulumi.Input<String>? addressPrefix;

  /// Creates a new [IPRuleResponse].
  /// [addressPrefix] Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
  IPRuleResponse({
    this.addressPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
    };
  }

  factory IPRuleResponse.fromMap(Map<String, dynamic> map) {
    return IPRuleResponse(
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix'] as String).input(),
    );
  }
}

