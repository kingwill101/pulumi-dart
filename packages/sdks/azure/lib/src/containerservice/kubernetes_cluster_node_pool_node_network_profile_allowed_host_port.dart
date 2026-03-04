// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterNodePoolNodeNetworkProfileAllowedHostPort {
  /// Specifies the end of the port range.
  final pulumi.Input<int>? portEnd;

  /// Specifies the start of the port range.
  final pulumi.Input<int>? portStart;

  /// Specifies the protocol of the port range. Possible values are `TCP` and `UDP`.
  final pulumi.Input<String>? protocol;

  /// Creates a new [KubernetesClusterNodePoolNodeNetworkProfileAllowedHostPort].
  /// [portEnd] Specifies the end of the port range.
  /// [portStart] Specifies the start of the port range.
  /// [protocol] Specifies the protocol of the port range. Possible values are `TCP` and `UDP`.
  KubernetesClusterNodePoolNodeNetworkProfileAllowedHostPort({
    this.portEnd,
    this.portStart,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portEnd': ?portEnd,
      'portStart': ?portStart,
      'protocol': ?protocol,
    };
  }

  factory KubernetesClusterNodePoolNodeNetworkProfileAllowedHostPort.fromMap(
    Map<String, dynamic> map,
  ) {
    return KubernetesClusterNodePoolNodeNetworkProfileAllowedHostPort(
      portEnd: (() {
        final guardedValue = map['portEnd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      portStart: (() {
        final guardedValue = map['portStart'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
