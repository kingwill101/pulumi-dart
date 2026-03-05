// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecIngressRuleMatchPath {
  /// The `Access-Control-Allow-Origin` header will be set to the client's origin if the beginning of the client's origin matches the value you provide.
  final pulumi.Input<String> prefix;

  /// Creates a new [GetAppSpecIngressRuleMatchPath].
  /// [prefix] The `Access-Control-Allow-Origin` header will be set to the client's origin if the beginning of the client's origin matches the value you provide.
  GetAppSpecIngressRuleMatchPath({
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
    };
  }

  factory GetAppSpecIngressRuleMatchPath.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressRuleMatchPath(
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}

