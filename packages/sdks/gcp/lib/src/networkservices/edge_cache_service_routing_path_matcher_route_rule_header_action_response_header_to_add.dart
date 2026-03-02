// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd {
  /// The name of the header to add.
  final pulumi.Input<String> headerName;
  /// The value of the header to add.
  final pulumi.Input<String> headerValue;
  /// Whether to replace all existing headers with the same name.
  final pulumi.Input<bool>? replace;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd].
  /// [headerName] The name of the header to add.
  /// [headerValue] The value of the header to add.
  /// [replace] Whether to replace all existing headers with the same name.
  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd({
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

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd(
      headerName: (map['headerName'] as String).input(),
      headerValue: (map['headerValue'] as String).input(),
      replace: map['replace'] == null ? null : (map['replace'] as bool).input(),
    );
  }
}

