// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// QueryOverride. Query message defines query override for HTTP targets.
class QueryOverrideCloudtasksV2beta2 {
  /// The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  final pulumi.Input<String>? queryParams;

  /// Creates a new [QueryOverrideCloudtasksV2beta2].
  /// [queryParams] The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  QueryOverrideCloudtasksV2beta2({
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryParams': ?queryParams,
    };
  }

  factory QueryOverrideCloudtasksV2beta2.fromMap(Map<String, dynamic> map) {
    return QueryOverrideCloudtasksV2beta2(
      queryParams: (() { final guardedValue = map['queryParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

