// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionUrlMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd {
  /// The name of the header.
  final pulumi.Input<String> headerName;
  /// The value of the header to add.
  final pulumi.Input<String> headerValue;
  /// If false, headerValue is appended to any values that already exist for the header. If true, headerValue is set for the header, discarding any values that were set for that header.
  /// The default value is false.
  final pulumi.Input<bool> replace;

  /// Creates a new [RegionUrlMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd].
  /// [headerName] The name of the header.
  /// [headerValue] The value of the header to add.
  /// [replace] If false, headerValue is appended to any values that already exist for the header. If true, headerValue is set for the header, discarding any values that were set for that header.
  const RegionUrlMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd({
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

  factory RegionUrlMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      headerValue: pulumi.Input.fromValue(map['headerValue'] as String),
      replace: pulumi.Input.fromValue(map['replace'] as bool),
    );
  }
}
