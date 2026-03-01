// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_service_health_check.dart';
import 'load_balancer_service_http.dart';

/// {@template pulumi_index_load_balancer_service_load_balancer_service_args_doc}
/// The set of arguments for LoadBalancerService.
/// {@endtemplate}
/// {@macro pulumi_index_load_balancer_service_load_balancer_service_args_doc}
class LoadBalancerServiceArgs {
  /// Port the service connects to the targets on, required if protocol is `tcp`. Can be everything between `1` and `65535`.
  final pulumi.Input<int>? destinationPort;
  /// Health Check configuration when `protocol` is `http` or `https`.
  final pulumi.Input<LoadBalancerServiceHealthCheck>? healthCheck;
  /// HTTP configuration when `protocol` is `http` or `https`.
  final pulumi.Input<LoadBalancerServiceHttp>? http;
  /// Port the service listen on, required if protocol is `tcp`. Can be everything between `1` and `65535`. Must be unique per Load Balancer.
  final pulumi.Input<int>? listenPort;
  /// Id of the load balancer this service belongs to.
  final pulumi.Input<String> loadBalancerId;
  /// Protocol of the service. `http`, `https` or `tcp`
  final pulumi.Input<String> protocol;
  /// Enable proxyprotocol.
  final pulumi.Input<bool>? proxyprotocol;

  /// Creates a new [LoadBalancerServiceArgs].
  /// [destinationPort] Port the service connects to the targets on, required if protocol is `tcp`. Can be everything between `1` and `65535`.
  /// [healthCheck] Health Check configuration when `protocol` is `http` or `https`.
  /// [http] HTTP configuration when `protocol` is `http` or `https`.
  /// [listenPort] Port the service listen on, required if protocol is `tcp`. Can be everything between `1` and `65535`. Must be unique per Load Balancer.
  /// [loadBalancerId] Id of the load balancer this service belongs to.
  /// [protocol] Protocol of the service. `http`, `https` or `tcp`
  /// [proxyprotocol] Enable proxyprotocol.
  LoadBalancerServiceArgs({
    pulumi.Output<int>? destinationPort,
    pulumi.Output<LoadBalancerServiceHealthCheck>? healthCheck,
    pulumi.Output<LoadBalancerServiceHttp>? http,
    pulumi.Output<int>? listenPort,
    required pulumi.Output<String> loadBalancerId,
    required pulumi.Output<String> protocol,
    pulumi.Output<bool>? proxyprotocol,
  }) :
      destinationPort = pulumi.Input.asOptionalInput<int>(destinationPort),
      healthCheck = pulumi.Input.asOptionalInput<LoadBalancerServiceHealthCheck>(healthCheck),
      http = pulumi.Input.asOptionalInput<LoadBalancerServiceHttp>(http),
      listenPort = pulumi.Input.asOptionalInput<int>(listenPort),
      loadBalancerId = pulumi.Input.asInput<String>(loadBalancerId),
      protocol = pulumi.Input.asInput<String>(protocol),
      proxyprotocol = pulumi.Input.asOptionalInput<bool>(proxyprotocol);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPort': ?destinationPort,
      'healthCheck': ?pulumi.Input.mapOptionalInputValue<LoadBalancerServiceHealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'http': ?pulumi.Input.mapOptionalInputValue<LoadBalancerServiceHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
      'listenPort': ?listenPort,
      'loadBalancerId': loadBalancerId,
      'protocol': protocol,
      'proxyprotocol': ?proxyprotocol,
    };
  }

  factory LoadBalancerServiceArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerServiceArgs(
      destinationPort: map['destinationPort'] == null ? null : pulumi.Output.create<int>(map['destinationPort'] as int),
      healthCheck: map['healthCheck'] == null ? null : pulumi.Output.create<LoadBalancerServiceHealthCheck>(LoadBalancerServiceHealthCheck.fromMap((map['healthCheck'] as Map).cast<String, dynamic>())),
      http: map['http'] == null ? null : pulumi.Output.create<LoadBalancerServiceHttp>(LoadBalancerServiceHttp.fromMap((map['http'] as Map).cast<String, dynamic>())),
      listenPort: map['listenPort'] == null ? null : pulumi.Output.create<int>(map['listenPort'] as int),
      loadBalancerId: pulumi.Output.create<String>(map['loadBalancerId'] as String),
      protocol: pulumi.Output.create<String>(map['protocol'] as String),
      proxyprotocol: map['proxyprotocol'] == null ? null : pulumi.Output.create<bool>(map['proxyprotocol'] as bool),
    );
  }
}

