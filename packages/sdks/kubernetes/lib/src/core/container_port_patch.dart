// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ContainerPort represents a network port in a single container.
class ContainerPortPatch {
  /// Number of port to expose on the pod's IP address. This must be a valid port number, 0 &lt; x &lt; 65536.
  final pulumi.Input<int>? containerPort;

  /// What host IP to bind the external port to.
  final pulumi.Input<String>? hostIP;

  /// Number of port to expose on the host. If specified, this must be a valid port number, 0 &lt; x &lt; 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
  final pulumi.Input<int>? hostPort;

  /// If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
  final pulumi.Input<String>? name;

  /// Protocol for port. Must be UDP, TCP, or SCTP. Defaults to "TCP".
  final pulumi.Input<String>? protocol;

  /// Creates a new [ContainerPortPatch].
  /// [containerPort] Number of port to expose on the pod's IP address. This must be a valid port number, 0 &lt; x &lt; 65536.
  /// [hostIP] What host IP to bind the external port to.
  /// [hostPort] Number of port to expose on the host. If specified, this must be a valid port number, 0 &lt; x &lt; 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
  /// [name] If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
  /// [protocol] Protocol for port. Must be UDP, TCP, or SCTP. Defaults to "TCP".
  ContainerPortPatch({
    this.containerPort,
    this.hostIP,
    this.hostPort,
    this.name,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': ?containerPort,
      'hostIP': ?hostIP,
      'hostPort': ?hostPort,
      'name': ?name,
      'protocol': ?protocol,
    };
  }

  factory ContainerPortPatch.fromMap(Map<String, dynamic> map) {
    return ContainerPortPatch(
      containerPort: (() {
        final guardedValue = map['containerPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      hostIP: (() {
        final guardedValue = map['hostIP'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostPort: (() {
        final guardedValue = map['hostPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
