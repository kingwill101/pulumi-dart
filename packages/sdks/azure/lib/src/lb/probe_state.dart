// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Probe resources.
class ProbeState {
  /// The interval, in seconds between probes to the backend endpoint for health status. The default value is 15, the minimum value is 5.
  final pulumi.Input<int>? intervalInSeconds;
  final pulumi.Input<List<String>>? loadBalancerRules;
  /// The ID of the LoadBalancer in which to create the Probe. Changing this forces a new resource to be created.
  final pulumi.Input<String>? loadbalancerId;
  /// Specifies the name of the Probe. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The number of failed probe attempts after which the backend endpoint is removed from rotation. Default to `2`. NumberOfProbes multiplied by intervalInSeconds value must be greater or equal to 10.Endpoints are returned to rotation when at least one probe is successful.
  final pulumi.Input<int>? numberOfProbes;
  /// Port on which the Probe queries the backend endpoint. Possible values range from 1 to 65535, inclusive.
  final pulumi.Input<int>? port;
  /// The number of consecutive successful or failed probes that allow or deny traffic to this endpoint. Possible values range from `1` to `100`. The default value is `1`.
  final pulumi.Input<int>? probeThreshold;
  /// Specifies the protocol of the end point. Possible values are `Http`, `Https` or `Tcp`. If TCP is specified, a received ACK is required for the probe to be successful. If HTTP is specified, a 200 OK response from the specified URI is required for the probe to be successful. Defaults to `Tcp`.
  final pulumi.Input<String>? protocol;
  /// The URI used for requesting health status from the backend endpoint. Required if protocol is set to `Http` or `Https`. Otherwise, it is not allowed.
  final pulumi.Input<String>? requestPath;

  /// Creates a new [ProbeState].
  /// [intervalInSeconds] The interval, in seconds between probes to the backend endpoint for health status. The default value is 15, the minimum value is 5.
  /// [loadBalancerRules] Optional.
  /// [loadbalancerId] The ID of the LoadBalancer in which to create the Probe. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Probe. Changing this forces a new resource to be created.
  /// [numberOfProbes] The number of failed probe attempts after which the backend endpoint is removed from rotation. Default to `2`. NumberOfProbes multiplied by intervalInSeconds value must be greater or equal to 10.Endpoints are returned to rotation when at least one probe is successful.
  /// [port] Port on which the Probe queries the backend endpoint. Possible values range from 1 to 65535, inclusive.
  /// [probeThreshold] The number of consecutive successful or failed probes that allow or deny traffic to this endpoint. Possible values range from `1` to `100`. The default value is `1`.
  /// [protocol] Specifies the protocol of the end point. Possible values are `Http`, `Https` or `Tcp`. If TCP is specified, a received ACK is required for the probe to be successful. If HTTP is specified, a 200 OK response from the specified URI is required for the probe to be successful. Defaults to `Tcp`.
  /// [requestPath] The URI used for requesting health status from the backend endpoint. Required if protocol is set to `Http` or `Https`. Otherwise, it is not allowed.
  ProbeState({
    this.intervalInSeconds,
    this.loadBalancerRules,
    this.loadbalancerId,
    this.name,
    this.numberOfProbes,
    this.port,
    this.probeThreshold,
    this.protocol,
    this.requestPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalInSeconds': ?intervalInSeconds,
      'loadBalancerRules': ?loadBalancerRules,
      'loadbalancerId': ?loadbalancerId,
      'name': ?name,
      'numberOfProbes': ?numberOfProbes,
      'port': ?port,
      'probeThreshold': ?probeThreshold,
      'protocol': ?protocol,
      'requestPath': ?requestPath,
    };
  }

  factory ProbeState.fromMap(Map<String, dynamic> map) {
    return ProbeState(
      intervalInSeconds: (() { final guardedValue = map['intervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      loadBalancerRules: (() { final guardedValue = map['loadBalancerRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loadbalancerId: (() { final guardedValue = map['loadbalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfProbes: (() { final guardedValue = map['numberOfProbes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      probeThreshold: (() { final guardedValue = map['probeThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestPath: (() { final guardedValue = map['requestPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

