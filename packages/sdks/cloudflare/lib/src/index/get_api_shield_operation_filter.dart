// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiShieldOperationFilter {
  /// Direction to order results.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter results to only include endpoints containing this pattern.
  final pulumi.Input<String?>? endpoint;
  /// Add feature(s) to the results. The feature name that is given here corresponds to the resulting feature object. Have a look at the top-level object description for more details on the specific meaning.
  final pulumi.Input<List<String>?>? features;
  /// Filter results to only include the specified hosts.
  final pulumi.Input<List<String>?>? hosts;
  /// Filter results to only include the specified HTTP methods.
  final pulumi.Input<List<String>?>? methods;
  /// Field to order by. When requesting a feature, the feature keys are available for ordering as well, e.g., `thresholds.suggested_threshold`.
  /// Available values: "method", "host", "endpoint", "thresholds.$key".
  final pulumi.Input<String?>? order;

  /// Creates a new [GetApiShieldOperationFilter].
  /// [direction] Direction to order results.
  /// [endpoint] Filter results to only include endpoints containing this pattern.
  /// [features] Add feature(s) to the results. The feature name that is given here corresponds to the resulting feature object. Have a look at the top-level object description for more details on the specific meaning.
  /// [hosts] Filter results to only include the specified hosts.
  /// [methods] Filter results to only include the specified HTTP methods.
  /// [order] Field to order by. When requesting a feature, the feature keys are available for ordering as well, e.g., `thresholds.suggested_threshold`.
  const GetApiShieldOperationFilter({
    this.direction,
    this.endpoint,
    this.features,
    this.hosts,
    this.methods,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'endpoint': ?endpoint,
      'features': ?features,
      'hosts': ?hosts,
      'methods': ?methods,
      'order': ?order,
    };
  }

  factory GetApiShieldOperationFilter.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      methods: (() { final guardedValue = map['methods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
