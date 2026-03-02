// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkDnsSrV {
  /// Defines the domain name used for the SRV record.
  final pulumi.Input<String>? domain;
  /// Specifies the port number associated with the SRV record.
  final pulumi.Input<double>? port;
  /// Sets the priority of the SRV record, influencing the selection order for clients.
  final pulumi.Input<double>? priority;
  /// Defines the protocol (e.g., TCP or UDP) used for the SRV record.
  final pulumi.Input<String>? protocol;
  /// Specifies the service name associated with the SRV record.
  final pulumi.Input<String>? service;
  /// Indicates the target host name to contact for the specified service.
  final pulumi.Input<String>? target;
  /// Sets the weight for load balancing among SRV records.
  final pulumi.Input<double>? weight;

  /// Creates a new [NetworkDnsSrV].
  /// [domain] Defines the domain name used for the SRV record.
  /// [port] Specifies the port number associated with the SRV record.
  /// [priority] Sets the priority of the SRV record, influencing the selection order for clients.
  /// [protocol] Defines the protocol (e.g., TCP or UDP) used for the SRV record.
  /// [service] Specifies the service name associated with the SRV record.
  /// [target] Indicates the target host name to contact for the specified service.
  /// [weight] Sets the weight for load balancing among SRV records.
  NetworkDnsSrV({
    this.domain,
    this.port,
    this.priority,
    this.protocol,
    this.service,
    this.target,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'port': ?port,
      'priority': ?priority,
      'protocol': ?protocol,
      'service': ?service,
      'target': ?target,
      'weight': ?weight,
    };
  }

  factory NetworkDnsSrV.fromMap(Map<String, dynamic> map) {
    return NetworkDnsSrV(
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as double).input(),
      priority: map['priority'] == null ? null : (map['priority'] as double).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      service: map['service'] == null ? null : (map['service'] as String).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
      weight: map['weight'] == null ? null : (map['weight'] as double).input(),
    );
  }
}

