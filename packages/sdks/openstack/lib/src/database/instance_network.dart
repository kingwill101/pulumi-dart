// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceNetwork {
  /// Specifies a fixed IPv4 address to be used on this
  /// network. Changing this creates a new instance.
  final pulumi.Input<String>? fixedIpV4;
  /// Specifies a fixed IPv6 address to be used on this
  /// network. Changing this creates a new instance.
  final pulumi.Input<String>? fixedIpV6;
  /// The port UUID of a
  /// network to attach to the instance. Changing this creates a new instance.
  final pulumi.Input<String>? port;
  /// The network UUID to
  /// attach to the instance. Changing this creates a new instance.
  final pulumi.Input<String>? uuid;

  /// Creates a new [InstanceNetwork].
  /// [fixedIpV4] Specifies a fixed IPv4 address to be used on this
  /// [fixedIpV6] Specifies a fixed IPv6 address to be used on this
  /// [port] The port UUID of a
  /// [uuid] The network UUID to
  InstanceNetwork({
    this.fixedIpV4,
    this.fixedIpV6,
    this.port,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedIpV4': ?fixedIpV4,
      'fixedIpV6': ?fixedIpV6,
      'port': ?port,
      'uuid': ?uuid,
    };
  }

  factory InstanceNetwork.fromMap(Map<String, dynamic> map) {
    return InstanceNetwork(
      fixedIpV4: (() { final guardedValue = map['fixedIpV4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fixedIpV6: (() { final guardedValue = map['fixedIpV6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

