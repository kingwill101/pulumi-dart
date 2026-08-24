// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_discovery_operations_result.dart';

/// Result data returned by getApiShieldDiscoveryOperations.
class GetApiShieldDiscoveryOperationsInvokeResult {
  final bool? diff;
  final String? direction;
  final String? endpoint;
  final List<String>? hosts;
  final int? maxItems;
  final List<String>? methods;
  final String? order;
  final String? origin;
  final List<GetApiShieldDiscoveryOperationsResult>? results;
  final String? state;
  final String? zoneId;

  /// Creates a new [GetApiShieldDiscoveryOperationsInvokeResult].
  /// [diff] Optional.
  /// [direction] Optional.
  /// [endpoint] Optional.
  /// [hosts] Optional.
  /// [maxItems] Optional.
  /// [methods] Optional.
  /// [order] Optional.
  /// [origin] Optional.
  /// [results] Optional.
  /// [state] Optional.
  /// [zoneId] Optional.
  const GetApiShieldDiscoveryOperationsInvokeResult({
    this.diff,
    this.direction,
    this.endpoint,
    this.hosts,
    this.maxItems,
    this.methods,
    this.order,
    this.origin,
    this.results,
    this.state,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diff': ?diff,
      'direction': ?direction,
      'endpoint': ?endpoint,
      'hosts': ?hosts,
      'maxItems': ?maxItems,
      'methods': ?methods,
      'order': ?order,
      'origin': ?origin,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApiShieldDiscoveryOperationsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldDiscoveryOperationsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetApiShieldDiscoveryOperationsInvokeResult(
      diff: (() { final guardedValue = map['diff']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      methods: (() { final guardedValue = map['methods']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApiShieldDiscoveryOperationsResult>(guardedValue, (value) => GetApiShieldDiscoveryOperationsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
