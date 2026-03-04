// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// A load balancer probe.
class ProbeResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// The interval, in seconds, for how frequently to probe the endpoint for health status. Typically, the interval is slightly less than half the allocated timeout period (in seconds) which allows two full probes before taking the instance out of rotation. The default value is 15, the minimum value is 5.
  final pulumi.Input<int>? intervalInSeconds;

  /// The load balancer rules that use this probe.
  final pulumi.Input<List<SubResourceResponse>> loadBalancingRules;

  /// The name of the resource that is unique within the set of probes used by the load balancer. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// Determines how new connections are handled by the load balancer when all backend instances are probed down.
  final pulumi.Input<String>? noHealthyBackendsBehavior;

  /// The number of probes where if no response, will result in stopping further traffic from being delivered to the endpoint. This values allows endpoints to be taken out of rotation faster or slower than the typical times used in Azure.
  final pulumi.Input<int>? numberOfProbes;

  /// The port for communicating the probe. Possible values range from 1 to 65535, inclusive.
  final pulumi.Input<int> port;

  /// The number of consecutive successful or failed probes in order to allow or deny traffic from being delivered to this endpoint. After failing the number of consecutive probes equal to this value, the endpoint will be taken out of rotation and require the same number of successful consecutive probes to be placed back in rotation.
  final pulumi.Input<int>? probeThreshold;

  /// The protocol of the end point. If 'Tcp' is specified, a received ACK is required for the probe to be successful. If 'Http' or 'Https' is specified, a 200 OK response from the specifies URI is required for the probe to be successful.
  final pulumi.Input<String> protocol;

  /// The provisioning state of the probe resource.
  final pulumi.Input<String> provisioningState;

  /// The URI used for requesting health status from the VM. Path is required if a protocol is set to http. Otherwise, it is not allowed. There is no default value.
  final pulumi.Input<String>? requestPath;

  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [ProbeResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [intervalInSeconds] The interval, in seconds, for how frequently to probe the endpoint for health status. Typically, the interval is slightly less than half the allocated timeout period (in seconds) which allows two full probes before taking the instance out of rotation. The default value is 15, the minimum value is 5.
  /// [loadBalancingRules] The load balancer rules that use this probe.
  /// [name] The name of the resource that is unique within the set of probes used by the load balancer. This name can be used to access the resource.
  /// [noHealthyBackendsBehavior] Determines how new connections are handled by the load balancer when all backend instances are probed down.
  /// [numberOfProbes] The number of probes where if no response, will result in stopping further traffic from being delivered to the endpoint. This values allows endpoints to be taken out of rotation faster or slower than the typical times used in Azure.
  /// [port] The port for communicating the probe. Possible values range from 1 to 65535, inclusive.
  /// [probeThreshold] The number of consecutive successful or failed probes in order to allow or deny traffic from being delivered to this endpoint. After failing the number of consecutive probes equal to this value, the endpoint will be taken out of rotation and require the same number of successful consecutive probes to be placed back in rotation.
  /// [protocol] The protocol of the end point. If 'Tcp' is specified, a received ACK is required for the probe to be successful. If 'Http' or 'Https' is specified, a 200 OK response from the specifies URI is required for the probe to be successful.
  /// [provisioningState] The provisioning state of the probe resource.
  /// [requestPath] The URI used for requesting health status from the VM. Path is required if a protocol is set to http. Otherwise, it is not allowed. There is no default value.
  /// [type] Type of the resource.
  ProbeResponse({
    required this.etag,
    this.id,
    this.intervalInSeconds,
    required this.loadBalancingRules,
    this.name,
    this.noHealthyBackendsBehavior,
    this.numberOfProbes,
    required this.port,
    this.probeThreshold,
    required this.protocol,
    required this.provisioningState,
    this.requestPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'intervalInSeconds': ?intervalInSeconds,
      'loadBalancingRules':
          pulumi.Input.mapInputValue<
            List<SubResourceResponse>,
            List<Map<String, dynamic>>
          >(
            loadBalancingRules,
            (value) =>
                pulumi.Input.encodeList<
                  SubResourceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'noHealthyBackendsBehavior': ?noHealthyBackendsBehavior,
      'numberOfProbes': ?numberOfProbes,
      'port': port,
      'probeThreshold': ?probeThreshold,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'requestPath': ?requestPath,
      'type': type,
    };
  }

  factory ProbeResponse.fromMap(Map<String, dynamic> map) {
    return ProbeResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      intervalInSeconds: (() {
        final guardedValue = map['intervalInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      loadBalancingRules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SubResourceResponse>(
          map['loadBalancingRules']!,
          (value) => SubResourceResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      noHealthyBackendsBehavior: (() {
        final guardedValue = map['noHealthyBackendsBehavior'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      numberOfProbes: (() {
        final guardedValue = map['numberOfProbes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      probeThreshold: (() {
        final guardedValue = map['probeThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      requestPath: (() {
        final guardedValue = map['requestPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
