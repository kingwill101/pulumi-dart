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
      fixedIpV4: map['fixedIpV4'] == null ? null : (map['fixedIpV4']! as String).input(),
      fixedIpV6: map['fixedIpV6'] == null ? null : (map['fixedIpV6']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
    );
  }
}

