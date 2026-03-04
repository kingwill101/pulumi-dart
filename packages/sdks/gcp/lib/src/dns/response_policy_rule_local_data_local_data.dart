// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponsePolicyRuleLocalDataLocalData {
  /// For example, www.example.com.
  final pulumi.Input<String> name;

  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1)
  final pulumi.Input<List<String>>? rrdatas;

  /// Number of seconds that this ResourceRecordSet can be cached by
  /// resolvers.
  final pulumi.Input<int>? ttl;

  /// One of valid DNS resource types.
  /// Possible values are: `A`, `AAAA`, `CAA`, `CNAME`, `DNSKEY`, `DS`, `HTTPS`, `IPSECVPNKEY`, `MX`, `NAPTR`, `NS`, `PTR`, `SOA`, `SPF`, `SRV`, `SSHFP`, `SVCB`, `TLSA`, `TXT`.
  final pulumi.Input<String> type;

  /// Creates a new [ResponsePolicyRuleLocalDataLocalData].
  /// [name] For example, www.example.com.
  /// [rrdatas] As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1)
  /// [ttl] Number of seconds that this ResourceRecordSet can be cached by
  /// [type] One of valid DNS resource types.
  ResponsePolicyRuleLocalDataLocalData({
    required this.name,
    this.rrdatas,
    this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'rrdatas': ?rrdatas,
      'ttl': ?ttl,
      'type': type,
    };
  }

  factory ResponsePolicyRuleLocalDataLocalData.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResponsePolicyRuleLocalDataLocalData(
      name: pulumi.Input.fromValue(map['name'] as String),
      rrdatas: (() {
        final guardedValue = map['rrdatas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
