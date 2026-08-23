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
  const NetworkDnsSrV({
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
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
