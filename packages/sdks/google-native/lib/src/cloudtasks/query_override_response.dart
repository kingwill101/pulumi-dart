// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// QueryOverride. Query message defines query override for HTTP targets.
class QueryOverrideResponse {
  /// The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  final pulumi.Input<String> queryParams;

  /// Creates a new [QueryOverrideResponse].
  /// [queryParams] The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  const QueryOverrideResponse({
    required this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryParams': queryParams,
    };
  }

  factory QueryOverrideResponse.fromMap(Map<String, dynamic> map) {
    return QueryOverrideResponse(
      queryParams: pulumi.Input.fromValue(map['queryParams'] as String),
    );
  }
}

