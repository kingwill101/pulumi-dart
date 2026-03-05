/// Specifies connection persistence when backends are unhealthy. The default value is DEFAULT_FOR_PROTOCOL. If set to DEFAULT_FOR_PROTOCOL, the existing connections persist on unhealthy backends only for connection-oriented protocols (TCP and SCTP) and only if the Tracking Mode is PER_CONNECTION (default tracking mode) or the Session Affinity is configured for 5-tuple. They do not persist for UDP. If set to NEVER_PERSIST, after a backend becomes unhealthy, the existing connections on the unhealthy backend are never persisted on the unhealthy backend. They are always diverted to newly selected healthy backends (unless all backends are unhealthy). If set to ALWAYS_PERSIST, existing connections always persist on unhealthy backends regardless of protocol and session affinity. It is generally not recommended to use this mode overriding the default. For more details, see [Connection Persistence for Network Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-backend-service#connection-persistence) and [Connection Persistence for Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal#connection-persistence).
enum BackendServiceConnectionTrackingPolicyConnectionPersistenceOnUnhealthyBackendsComputeV1 {
  alwaysPersist("ALWAYS_PERSIST"),
  defaultForProtocol("DEFAULT_FOR_PROTOCOL"),
  neverPersist("NEVER_PERSIST");

  const BackendServiceConnectionTrackingPolicyConnectionPersistenceOnUnhealthyBackendsComputeV1(this.wireValue);
  final String wireValue;

  static BackendServiceConnectionTrackingPolicyConnectionPersistenceOnUnhealthyBackendsComputeV1 fromValue(String value) {
    for (final item in BackendServiceConnectionTrackingPolicyConnectionPersistenceOnUnhealthyBackendsComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendServiceConnectionTrackingPolicyConnectionPersistenceOnUnhealthyBackendsComputeV1 value: $value');
  }
}

