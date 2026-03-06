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
  const LoadBalancerServiceArgs({
    this.destinationPort,
    this.healthCheck,
    this.http,
    this.listenPort,
    required this.loadBalancerId,
    required this.protocol,
    this.proxyprotocol,
  });

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
      destinationPort: (() { final guardedValue = map['destinationPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerServiceHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerServiceHttp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      listenPort: (() { final guardedValue = map['listenPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      proxyprotocol: (() { final guardedValue = map['proxyprotocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

