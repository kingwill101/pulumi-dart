// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_api_shield_discovery_operations_get_api_shield_discovery_operations_args_doc}
/// Arguments for getApiShieldDiscoveryOperations.
/// {@endtemplate}
/// {@macro pulumi_index_get_api_shield_discovery_operations_get_api_shield_discovery_operations_args_doc}
class GetApiShieldDiscoveryOperationsArgs {
  final pulumi.Input<bool?>? diff;
  final pulumi.Input<String?>? direction;
  final pulumi.Input<String?>? endpoint;
  final pulumi.Input<List<String>?>? hosts;
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<List<String>?>? methods;
  final pulumi.Input<String?>? order;
  final pulumi.Input<String?>? origin;
  final pulumi.Input<String?>? state;
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetApiShieldDiscoveryOperationsArgs].
  /// [diff] Optional.
  /// [direction] Optional.
  /// [endpoint] Optional.
  /// [hosts] Optional.
  /// [maxItems] Optional.
  /// [methods] Optional.
  /// [order] Optional.
  /// [origin] Optional.
  /// [state] Optional.
  /// [zoneId] Optional.
  const GetApiShieldDiscoveryOperationsArgs({
    this.diff,
    this.direction,
    this.endpoint,
    this.hosts,
    this.maxItems,
    this.methods,
    this.order,
    this.origin,
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
      'state': ?state,
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldDiscoveryOperationsArgs.fromMap(Map<String, dynamic> map) {
    return GetApiShieldDiscoveryOperationsArgs(
      diff: (() { final guardedValue = map['diff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      methods: (() { final guardedValue = map['methods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
