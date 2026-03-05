/// Specifies the key used for connection tracking. There are two options: - PER_CONNECTION: This is the default mode. The Connection Tracking is performed as per the Connection Key (default Hash Method) for the specific protocol. - PER_SESSION: The Connection Tracking is performed as per the configured Session Affinity. It matches the configured Session Affinity. For more details, see [Tracking Mode for Network Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-backend-service#tracking-mode) and [Tracking Mode for Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal#tracking-mode).
enum BackendServiceConnectionTrackingPolicyTrackingModeComputeBeta {
  invalidTrackingMode("INVALID_TRACKING_MODE"),
  perConnection("PER_CONNECTION"),
  perSession("PER_SESSION");

  const BackendServiceConnectionTrackingPolicyTrackingModeComputeBeta(this.wireValue);
  final String wireValue;

  static BackendServiceConnectionTrackingPolicyTrackingModeComputeBeta fromValue(String value) {
    for (final item in BackendServiceConnectionTrackingPolicyTrackingModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendServiceConnectionTrackingPolicyTrackingModeComputeBeta value: $value');
  }
}

