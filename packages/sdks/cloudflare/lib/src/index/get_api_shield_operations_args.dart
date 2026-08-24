// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_api_shield_operations_get_api_shield_operations_args_doc}
/// Arguments for getApiShieldOperations.
/// {@endtemplate}
/// {@macro pulumi_index_get_api_shield_operations_get_api_shield_operations_args_doc}
class GetApiShieldOperationsArgs {
  /// Direction to order results.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter results to only include endpoints containing this pattern.
  final pulumi.Input<String?>? endpoint;
  /// Add feature(s) to the results. The feature name that is given here corresponds to the resulting feature object. Have a look at the top-level object description for more details on the specific meaning.
  final pulumi.Input<List<String>?>? features;
  /// Filter results to only include the specified hosts.
  final pulumi.Input<List<String>?>? hosts;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter results to only include the specified HTTP methods.
  final pulumi.Input<List<String>?>? methods;
  /// Field to order by. When requesting a feature, the feature keys are available for ordering as well, e.g., `thresholds.suggested_threshold`.
  /// Available values: "method", "host", "endpoint", "thresholds.$key".
  final pulumi.Input<String?>? order;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetApiShieldOperationsArgs].
  /// [direction] Direction to order results.
  /// [endpoint] Filter results to only include endpoints containing this pattern.
  /// [features] Add feature(s) to the results. The feature name that is given here corresponds to the resulting feature object. Have a look at the top-level object description for more details on the specific meaning.
  /// [hosts] Filter results to only include the specified hosts.
  /// [maxItems] Max items to fetch, default: 1000
  /// [methods] Filter results to only include the specified HTTP methods.
  /// [order] Field to order by. When requesting a feature, the feature keys are available for ordering as well, e.g., `thresholds.suggested_threshold`.
  /// [zoneId] Identifier.
  const GetApiShieldOperationsArgs({
    this.direction,
    this.endpoint,
    this.features,
    this.hosts,
    this.maxItems,
    this.methods,
    this.order,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'endpoint': ?endpoint,
      'features': ?features,
      'hosts': ?hosts,
      'maxItems': ?maxItems,
      'methods': ?methods,
      'order': ?order,
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldOperationsArgs.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationsArgs(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      methods: (() { final guardedValue = map['methods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
