// ignore_for_file: unused_element, unnecessary_cast


/// A load balancer probe.
class Probe {
  /// Resource ID.
  final String? id;
  /// The interval, in seconds, for how frequently to probe the endpoint for health status. Typically, the interval is slightly less than half the allocated timeout period (in seconds) which allows two full probes before taking the instance out of rotation. The default value is 15, the minimum value is 5.
  final int? intervalInSeconds;
  /// The name of the resource that is unique within the set of probes used by the load balancer. This name can be used to access the resource.
  final String? name;
  /// Determines how new connections are handled by the load balancer when all backend instances are probed down.
  final String? noHealthyBackendsBehavior;
  /// The number of probes where if no response, will result in stopping further traffic from being delivered to the endpoint. This values allows endpoints to be taken out of rotation faster or slower than the typical times used in Azure.
  final int? numberOfProbes;
  /// The port for communicating the probe. Possible values range from 1 to 65535, inclusive.
  final int port;
  /// The number of consecutive successful or failed probes in order to allow or deny traffic from being delivered to this endpoint. After failing the number of consecutive probes equal to this value, the endpoint will be taken out of rotation and require the same number of successful consecutive probes to be placed back in rotation.
  final int? probeThreshold;
  /// The protocol of the end point. If 'Tcp' is specified, a received ACK is required for the probe to be successful. If 'Http' or 'Https' is specified, a 200 OK response from the specifies URI is required for the probe to be successful.
  final String protocol;
  /// The URI used for requesting health status from the VM. Path is required if a protocol is set to http. Otherwise, it is not allowed. There is no default value.
  final String? requestPath;

  /// Creates a new [Probe].
  /// [id] Resource ID.
  /// [intervalInSeconds] The interval, in seconds, for how frequently to probe the endpoint for health status. Typically, the interval is slightly less than half the allocated timeout period (in seconds) which allows two full probes before taking the instance out of rotation. The default value is 15, the minimum value is 5.
  /// [name] The name of the resource that is unique within the set of probes used by the load balancer. This name can be used to access the resource.
  /// [noHealthyBackendsBehavior] Determines how new connections are handled by the load balancer when all backend instances are probed down.
  /// [numberOfProbes] The number of probes where if no response, will result in stopping further traffic from being delivered to the endpoint. This values allows endpoints to be taken out of rotation faster or slower than the typical times used in Azure.
  /// [port] The port for communicating the probe. Possible values range from 1 to 65535, inclusive.
  /// [probeThreshold] The number of consecutive successful or failed probes in order to allow or deny traffic from being delivered to this endpoint. After failing the number of consecutive probes equal to this value, the endpoint will be taken out of rotation and require the same number of successful consecutive probes to be placed back in rotation.
  /// [protocol] The protocol of the end point. If 'Tcp' is specified, a received ACK is required for the probe to be successful. If 'Http' or 'Https' is specified, a 200 OK response from the specifies URI is required for the probe to be successful.
  /// [requestPath] The URI used for requesting health status from the VM. Path is required if a protocol is set to http. Otherwise, it is not allowed. There is no default value.
  Probe({
    this.id,
    this.intervalInSeconds,
    this.name,
    this.noHealthyBackendsBehavior,
    this.numberOfProbes,
    required this.port,
    this.probeThreshold,
    required this.protocol,
    this.requestPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'intervalInSeconds': ?intervalInSeconds,
      'name': ?name,
      'noHealthyBackendsBehavior': ?noHealthyBackendsBehavior,
      'numberOfProbes': ?numberOfProbes,
      'port': port,
      'probeThreshold': ?probeThreshold,
      'protocol': protocol,
      'requestPath': ?requestPath,
    };
  }

  factory Probe.fromMap(Map<String, dynamic> map) {
    return Probe(
      id: map['id'] == null ? null : map['id'] as String,
      intervalInSeconds: map['intervalInSeconds'] == null ? null : map['intervalInSeconds'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      noHealthyBackendsBehavior: map['noHealthyBackendsBehavior'] == null ? null : map['noHealthyBackendsBehavior'] as String,
      numberOfProbes: map['numberOfProbes'] == null ? null : map['numberOfProbes'] as int,
      port: map['port'] as int,
      probeThreshold: map['probeThreshold'] == null ? null : map['probeThreshold'] as int,
      protocol: map['protocol'] as String,
      requestPath: map['requestPath'] == null ? null : map['requestPath'] as String,
    );
  }
}

