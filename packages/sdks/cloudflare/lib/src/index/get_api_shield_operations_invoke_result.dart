// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operations_result.dart';

/// Result data returned by getApiShieldOperations.
class GetApiShieldOperationsInvokeResult {
  /// Direction to order results.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Filter results to only include endpoints containing this pattern.
  final String? endpoint;
  /// Add feature(s) to the results. The feature name that is given here corresponds to the resulting feature object. Have a look at the top-level object description for more details on the specific meaning.
  final List<String>? features;
  /// Filter results to only include the specified hosts.
  final List<String>? hosts;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filter results to only include the specified HTTP methods.
  final List<String>? methods;
  /// Field to order by. When requesting a feature, the feature keys are available for ordering as well, e.g., `thresholds.suggested_threshold`.
  /// Available values: "method", "host", "endpoint", "thresholds.$key".
  final String? order;
  /// The items returned by the data source
  final List<GetApiShieldOperationsResult>? results;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetApiShieldOperationsInvokeResult].
  /// [direction] Direction to order results.
  /// [endpoint] Filter results to only include endpoints containing this pattern.
  /// [features] Add feature(s) to the results. The feature name that is given here corresponds to the resulting feature object. Have a look at the top-level object description for more details on the specific meaning.
  /// [hosts] Filter results to only include the specified hosts.
  /// [maxItems] Max items to fetch, default: 1000
  /// [methods] Filter results to only include the specified HTTP methods.
  /// [order] Field to order by. When requesting a feature, the feature keys are available for ordering as well, e.g., `thresholds.suggested_threshold`.
  /// [results] The items returned by the data source
  /// [zoneId] Identifier.
  const GetApiShieldOperationsInvokeResult({
    this.direction,
    this.endpoint,
    this.features,
    this.hosts,
    this.maxItems,
    this.methods,
    this.order,
    this.results,
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
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApiShieldOperationsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldOperationsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationsInvokeResult(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      methods: (() { final guardedValue = map['methods']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApiShieldOperationsResult>(guardedValue, (value) => GetApiShieldOperationsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
