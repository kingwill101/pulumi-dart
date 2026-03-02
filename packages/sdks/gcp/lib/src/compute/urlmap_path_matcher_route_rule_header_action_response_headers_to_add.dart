// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd {
  /// The name of the header to add.
  final pulumi.Input<String> headerName;
  /// The value of the header to add.
  final pulumi.Input<String> headerValue;
  /// If false, headerValue is appended to any values that already exist for the header.
  /// If true, headerValue is set for the header, discarding any values that were set for that header.
  final pulumi.Input<bool> replace;

  /// Creates a new [URLMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd].
  /// [headerName] The name of the header to add.
  /// [headerValue] The value of the header to add.
  /// [replace] If false, headerValue is appended to any values that already exist for the header.
  URLMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd({
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

  factory URLMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd(
      headerName: (map['headerName'] as String).input(),
      headerValue: (map['headerValue'] as String).input(),
      replace: (map['replace'] as bool).input(),
    );
  }
}

