// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionBackendServiceConnectionTrackingPolicy {
  /// Specifies connection persistence when backends are unhealthy.
  /// If set to `DEFAULT_FOR_PROTOCOL`, the existing connections persist on
  /// unhealthy backends only for connection-oriented protocols (TCP and SCTP)
  /// and only if the Tracking Mode is PER_CONNECTION (default tracking mode)
  /// or the Session Affinity is configured for 5-tuple. They do not persist
  /// for UDP.
  /// If set to `NEVER_PERSIST`, after a backend becomes unhealthy, the existing
  /// connections on the unhealthy backend are never persisted on the unhealthy
  /// backend. They are always diverted to newly selected healthy backends
  /// (unless all backends are unhealthy).
  /// If set to `ALWAYS_PERSIST`, existing connections always persist on
  /// unhealthy backends regardless of protocol and session affinity. It is
  /// generally not recommended to use this mode overriding the default.
  /// Default value is `DEFAULT_FOR_PROTOCOL`.
  /// Possible values are: `DEFAULT_FOR_PROTOCOL`, `NEVER_PERSIST`, `ALWAYS_PERSIST`.
  final pulumi.Input<String>? connectionPersistenceOnUnhealthyBackends;
  /// Enable Strong Session Affinity for Network Load Balancing. This option is not available publicly.
  final pulumi.Input<bool>? enableStrongAffinity;
  /// Specifies how long to keep a Connection Tracking entry while there is
  /// no matching traffic (in seconds).
  /// For L4 ILB the minimum(default) is 10 minutes and maximum is 16 hours.
  /// For NLB the minimum(default) is 60 seconds and the maximum is 16 hours.
  final pulumi.Input<int>? idleTimeoutSec;
  /// Specifies the key used for connection tracking. There are two options:
  /// `PER_CONNECTION`: The Connection Tracking is performed as per the
  /// Connection Key (default Hash Method) for the specific protocol.
  /// `PER_SESSION`: The Connection Tracking is performed as per the
  /// configured Session Affinity. It matches the configured Session Affinity.
  /// Default value is `PER_CONNECTION`.
  /// Possible values are: `PER_CONNECTION`, `PER_SESSION`.
  final pulumi.Input<String>? trackingMode;

  /// Creates a new [RegionBackendServiceConnectionTrackingPolicy].
  /// [connectionPersistenceOnUnhealthyBackends] Specifies connection persistence when backends are unhealthy.
  /// [enableStrongAffinity] Enable Strong Session Affinity for Network Load Balancing. This option is not available publicly.
  /// [idleTimeoutSec] Specifies how long to keep a Connection Tracking entry while there is
  /// [trackingMode] Specifies the key used for connection tracking. There are two options:
  RegionBackendServiceConnectionTrackingPolicy({
    this.connectionPersistenceOnUnhealthyBackends,
    this.enableStrongAffinity,
    this.idleTimeoutSec,
    this.trackingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPersistenceOnUnhealthyBackends': ?connectionPersistenceOnUnhealthyBackends,
      'enableStrongAffinity': ?enableStrongAffinity,
      'idleTimeoutSec': ?idleTimeoutSec,
      'trackingMode': ?trackingMode,
    };
  }

  factory RegionBackendServiceConnectionTrackingPolicy.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceConnectionTrackingPolicy(
      connectionPersistenceOnUnhealthyBackends: (() { final guardedValue = map['connectionPersistenceOnUnhealthyBackends']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableStrongAffinity: (() { final guardedValue = map['enableStrongAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idleTimeoutSec: (() { final guardedValue = map['idleTimeoutSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      trackingMode: (() { final guardedValue = map['trackingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

