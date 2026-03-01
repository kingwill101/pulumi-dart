// ignore_for_file: unused_element, unnecessary_cast


class EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd {
  /// The name of the header to add.
  final String headerName;
  /// The value of the header to add.
  final String headerValue;
  /// Whether to replace all existing headers with the same name.
  final bool? replace;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd].
  /// [headerName] The name of the header to add.
  /// [headerValue] The value of the header to add.
  /// [replace] Whether to replace all existing headers with the same name.
  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd({
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
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
      replace: map['replace'] == null ? null : map['replace'] as bool,
    );
  }
}

