// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// QueryOverride. Query message defines query override for HTTP targets.
class QueryOverrideResponseCloudtasksV2beta2 {
  /// The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  final pulumi.Input<String> queryParams;

  /// Creates a new [QueryOverrideResponseCloudtasksV2beta2].
  /// [queryParams] The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  QueryOverrideResponseCloudtasksV2beta2({
    required this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryParams': queryParams,
    };
  }

  factory QueryOverrideResponseCloudtasksV2beta2.fromMap(Map<String, dynamic> map) {
    return QueryOverrideResponseCloudtasksV2beta2(
      queryParams: pulumi.Input.fromValue(map['queryParams'] as String),
    );
  }
}

