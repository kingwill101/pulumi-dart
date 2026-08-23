// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecIngressRuleMatchAuthority {
  /// The `Access-Control-Allow-Origin` header will be set to the client's origin only if the client's origin exactly matches the value you provide.
  final pulumi.Input<String>? exact;

  /// Creates a new [GetAppSpecIngressRuleMatchAuthority].
  /// [exact] The `Access-Control-Allow-Origin` header will be set to the client's origin only if the client's origin exactly matches the value you provide.
  const GetAppSpecIngressRuleMatchAuthority({
    this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
    };
  }

  factory GetAppSpecIngressRuleMatchAuthority.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressRuleMatchAuthority(
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
