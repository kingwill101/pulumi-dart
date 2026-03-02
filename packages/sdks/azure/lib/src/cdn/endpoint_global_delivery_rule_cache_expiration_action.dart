// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointGlobalDeliveryRuleCacheExpirationAction {
  /// The behavior of the cache. Valid values are `BypassCache`, `Override` and `SetIfMissing`.
  final pulumi.Input<String> behavior;
  /// Duration of the cache. Only allowed when `behavior` is set to `Override` or `SetIfMissing`. Format: `[d.]hh:mm:ss`
  final pulumi.Input<String>? duration;

  /// Creates a new [EndpointGlobalDeliveryRuleCacheExpirationAction].
  /// [behavior] The behavior of the cache. Valid values are `BypassCache`, `Override` and `SetIfMissing`.
  /// [duration] Duration of the cache. Only allowed when `behavior` is set to `Override` or `SetIfMissing`. Format: `[d.]hh:mm:ss`
  EndpointGlobalDeliveryRuleCacheExpirationAction({
    required this.behavior,
    this.duration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
      'duration': ?duration,
    };
  }

  factory EndpointGlobalDeliveryRuleCacheExpirationAction.fromMap(Map<String, dynamic> map) {
    return EndpointGlobalDeliveryRuleCacheExpirationAction(
      behavior: (map['behavior'] as String).input(),
      duration: map['duration'] == null ? null : (map['duration']! as String).input(),
    );
  }
}

