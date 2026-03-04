/// The protocol this BackendService uses to communicate with backends. Possible values are HTTP, HTTPS, HTTP2, TCP, SSL, UDP or GRPC. depending on the chosen load balancer or Traffic Director configuration. Refer to the documentation for the load balancers or for Traffic Director for more information. Must be set to GRPC when the backend service is referenced by a URL map that is bound to target gRPC proxy.
enum RegionBackendServiceProtocol {
  all("ALL"),
  grpc("GRPC"),
  http("HTTP"),
  http2("HTTP2"),
  https("HTTPS"),
  ssl("SSL"),
  tcp("TCP"),
  udp("UDP"),
  unspecified("UNSPECIFIED");

  const RegionBackendServiceProtocol(this.wireValue);
  final String wireValue;

  static RegionBackendServiceProtocol fromValue(String value) {
    for (final item in RegionBackendServiceProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionBackendServiceProtocol value: $value');
  }
}
