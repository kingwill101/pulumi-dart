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
    pulumi.Output<int>? intervalInSeconds,
    pulumi.Output<List<String>>? loadBalancerRules,
    pulumi.Output<String>? loadbalancerId,
    pulumi.Output<String>? name,
    pulumi.Output<int>? numberOfProbes,
    pulumi.Output<int>? port,
    pulumi.Output<int>? probeThreshold,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? requestPath,
  }) :
      intervalInSeconds = pulumi.Input.asOptionalInput<int>(intervalInSeconds),
      loadBalancerRules = pulumi.Input.asOptionalInput<List<String>>(loadBalancerRules),
      loadbalancerId = pulumi.Input.asOptionalInput<String>(loadbalancerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      numberOfProbes = pulumi.Input.asOptionalInput<int>(numberOfProbes),
      port = pulumi.Input.asOptionalInput<int>(port),
      probeThreshold = pulumi.Input.asOptionalInput<int>(probeThreshold),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      requestPath = pulumi.Input.asOptionalInput<String>(requestPath);

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
      intervalInSeconds: map['intervalInSeconds'] == null ? null : pulumi.Output.create<int>(map['intervalInSeconds'] as int),
      loadBalancerRules: map['loadBalancerRules'] == null ? null : pulumi.Output.create<List<String>>((map['loadBalancerRules'] as List).cast<String>()),
      loadbalancerId: map['loadbalancerId'] == null ? null : pulumi.Output.create<String>(map['loadbalancerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      numberOfProbes: map['numberOfProbes'] == null ? null : pulumi.Output.create<int>(map['numberOfProbes'] as int),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      probeThreshold: map['probeThreshold'] == null ? null : pulumi.Output.create<int>(map['probeThreshold'] as int),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      requestPath: map['requestPath'] == null ? null : pulumi.Output.create<String>(map['requestPath'] as String),
    );
  }
}

