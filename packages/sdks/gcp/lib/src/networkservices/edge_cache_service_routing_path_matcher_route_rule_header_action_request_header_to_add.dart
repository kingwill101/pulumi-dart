// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd {
  /// The name of the header to add.
  final pulumi.Input<String> headerName;
  /// The value of the header to add.
  final pulumi.Input<String> headerValue;
  /// Whether to replace all existing headers with the same name.
  final pulumi.Input<bool>? replace;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd].
  /// [headerName] The name of the header to add.
  /// [headerValue] The value of the header to add.
  /// [replace] Whether to replace all existing headers with the same name.
  const EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd({
    required this.headerName,
    required this.headerValue,
    this.replace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
      'replace': ?replace,
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      headerValue: pulumi.Input.fromValue(map['headerValue'] as String),
      replace: (() { final guardedValue = map['replace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
