// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection Tracking configuration for this BackendService.
class BackendServiceConnectionTrackingPolicyResponseComputeBeta {
  /// Specifies connection persistence when backends are unhealthy. The default value is DEFAULT_FOR_PROTOCOL. If set to DEFAULT_FOR_PROTOCOL, the existing connections persist on unhealthy backends only for connection-oriented protocols (TCP and SCTP) and only if the Tracking Mode is PER_CONNECTION (default tracking mode) or the Session Affinity is configured for 5-tuple. They do not persist for UDP. If set to NEVER_PERSIST, after a backend becomes unhealthy, the existing connections on the unhealthy backend are never persisted on the unhealthy backend. They are always diverted to newly selected healthy backends (unless all backends are unhealthy). If set to ALWAYS_PERSIST, existing connections always persist on unhealthy backends regardless of protocol and session affinity. It is generally not recommended to use this mode overriding the default. For more details, see [Connection Persistence for Network Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-backend-service#connection-persistence) and [Connection Persistence for Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal#connection-persistence).
  final pulumi.Input<String> connectionPersistenceOnUnhealthyBackends;

  /// Enable Strong Session Affinity for Network Load Balancing. This option is not available publicly.
  final pulumi.Input<bool> enableStrongAffinity;

  /// Specifies how long to keep a Connection Tracking entry while there is no matching traffic (in seconds). For Internal TCP/UDP Load Balancing: - The minimum (default) is 10 minutes and the maximum is 16 hours. - It can be set only if Connection Tracking is less than 5-tuple (i.e. Session Affinity is CLIENT_IP_NO_DESTINATION, CLIENT_IP or CLIENT_IP_PROTO, and Tracking Mode is PER_SESSION). For Network Load Balancer the default is 60 seconds. This option is not available publicly.
  final pulumi.Input<int> idleTimeoutSec;

  /// Specifies the key used for connection tracking. There are two options: - PER_CONNECTION: This is the default mode. The Connection Tracking is performed as per the Connection Key (default Hash Method) for the specific protocol. - PER_SESSION: The Connection Tracking is performed as per the configured Session Affinity. It matches the configured Session Affinity. For more details, see [Tracking Mode for Network Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-backend-service#tracking-mode) and [Tracking Mode for Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal#tracking-mode).
  final pulumi.Input<String> trackingMode;

  /// Creates a new [BackendServiceConnectionTrackingPolicyResponseComputeBeta].
  /// [connectionPersistenceOnUnhealthyBackends] Specifies connection persistence when backends are unhealthy. The default value is DEFAULT_FOR_PROTOCOL. If set to DEFAULT_FOR_PROTOCOL, the existing connections persist on unhealthy backends only for connection-oriented protocols (TCP and SCTP) and only if the Tracking Mode is PER_CONNECTION (default tracking mode) or the Session Affinity is configured for 5-tuple. They do not persist for UDP. If set to NEVER_PERSIST, after a backend becomes unhealthy, the existing connections on the unhealthy backend are never persisted on the unhealthy backend. They are always diverted to newly selected healthy backends (unless all backends are unhealthy). If set to ALWAYS_PERSIST, existing connections always persist on unhealthy backends regardless of protocol and session affinity. It is generally not recommended to use this mode overriding the default. For more details, see [Connection Persistence for Network Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-backend-service#connection-persistence) and [Connection Persistence for Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal#connection-persistence).
  /// [enableStrongAffinity] Enable Strong Session Affinity for Network Load Balancing. This option is not available publicly.
  /// [idleTimeoutSec] Specifies how long to keep a Connection Tracking entry while there is no matching traffic (in seconds). For Internal TCP/UDP Load Balancing: - The minimum (default) is 10 minutes and the maximum is 16 hours. - It can be set only if Connection Tracking is less than 5-tuple (i.e. Session Affinity is CLIENT_IP_NO_DESTINATION, CLIENT_IP or CLIENT_IP_PROTO, and Tracking Mode is PER_SESSION). For Network Load Balancer the default is 60 seconds. This option is not available publicly.
  /// [trackingMode] Specifies the key used for connection tracking. There are two options: - PER_CONNECTION: This is the default mode. The Connection Tracking is performed as per the Connection Key (default Hash Method) for the specific protocol. - PER_SESSION: The Connection Tracking is performed as per the configured Session Affinity. It matches the configured Session Affinity. For more details, see [Tracking Mode for Network Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-backend-service#tracking-mode) and [Tracking Mode for Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal#tracking-mode).
  BackendServiceConnectionTrackingPolicyResponseComputeBeta({
    required this.connectionPersistenceOnUnhealthyBackends,
    required this.enableStrongAffinity,
    required this.idleTimeoutSec,
    required this.trackingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPersistenceOnUnhealthyBackends':
          connectionPersistenceOnUnhealthyBackends,
      'enableStrongAffinity': enableStrongAffinity,
      'idleTimeoutSec': idleTimeoutSec,
      'trackingMode': trackingMode,
    };
  }

  factory BackendServiceConnectionTrackingPolicyResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendServiceConnectionTrackingPolicyResponseComputeBeta(
      connectionPersistenceOnUnhealthyBackends: pulumi.Input.fromValue(
        map['connectionPersistenceOnUnhealthyBackends'] as String,
      ),
      enableStrongAffinity: pulumi.Input.fromValue(
        map['enableStrongAffinity'] as bool,
      ),
      idleTimeoutSec: pulumi.Input.fromValue(map['idleTimeoutSec'] as int),
      trackingMode: pulumi.Input.fromValue(map['trackingMode'] as String),
    );
  }
}
