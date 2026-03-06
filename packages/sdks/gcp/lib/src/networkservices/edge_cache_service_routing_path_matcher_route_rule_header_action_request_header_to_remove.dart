// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove {
  /// The name of the header to remove.
  final pulumi.Input<String> headerName;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove].
  /// [headerName] The name of the header to remove.
  const EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}

