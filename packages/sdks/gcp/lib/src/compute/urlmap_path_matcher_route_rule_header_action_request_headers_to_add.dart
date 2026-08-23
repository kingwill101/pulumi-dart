// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherRouteRuleHeaderActionRequestHeadersToAdd {
  /// The name of the header to add.
  final pulumi.Input<String> headerName;
  /// The value of the header to add.
  final pulumi.Input<String> headerValue;
  /// If false, headerValue is appended to any values that already exist for the header.
  /// If true, headerValue is set for the header, discarding any values that were set for that header.
  final pulumi.Input<bool> replace;

  /// Creates a new [URLMapPathMatcherRouteRuleHeaderActionRequestHeadersToAdd].
  /// [headerName] The name of the header to add.
  /// [headerValue] The value of the header to add.
  /// [replace] If false, headerValue is appended to any values that already exist for the header.
  const URLMapPathMatcherRouteRuleHeaderActionRequestHeadersToAdd({
    required this.headerName,
    required this.headerValue,
    required this.replace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
      'replace': replace,
    };
  }

  factory URLMapPathMatcherRouteRuleHeaderActionRequestHeadersToAdd.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleHeaderActionRequestHeadersToAdd(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      headerValue: pulumi.Input.fromValue(map['headerValue'] as String),
      replace: pulumi.Input.fromValue(map['replace'] as bool),
    );
  }
}
