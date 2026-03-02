// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceNetwork {
  /// Specifies if this network should be used for
  /// provisioning access. Accepts true or false. Defaults to false.
  final pulumi.Input<bool>? accessNetwork;
  /// Specifies a fixed IPv4 address to be used on this
  /// network. Changing this creates a new server.
  final pulumi.Input<String>? fixedIpV4;
  final pulumi.Input<String>? fixedIpV6;
  final pulumi.Input<String>? mac;
  /// The human-readable
  /// name of the network. Changing this creates a new server.
  final pulumi.Input<String>? name;
  /// The port UUID of a
  /// network to attach to the server. Changing this creates a new server.
  final pulumi.Input<String>? port;
  /// The network UUID to
  /// attach to the server. Changing this creates a new server.
  final pulumi.Input<String>? uuid;

  /// Creates a new [InstanceNetwork].
  /// [accessNetwork] Specifies if this network should be used for
  /// [fixedIpV4] Specifies a fixed IPv4 address to be used on this
  /// [fixedIpV6] Optional.
  /// [mac] Optional.
  /// [name] The human-readable
  /// [port] The port UUID of a
  /// [uuid] The network UUID to
  InstanceNetwork({
    this.accessNetwork,
    this.fixedIpV4,
    this.fixedIpV6,
    this.mac,
    this.name,
    this.port,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessNetwork': ?accessNetwork,
      'fixedIpV4': ?fixedIpV4,
      'fixedIpV6': ?fixedIpV6,
      'mac': ?mac,
      'name': ?name,
      'port': ?port,
      'uuid': ?uuid,
    };
  }

  factory InstanceNetwork.fromMap(Map<String, dynamic> map) {
    return InstanceNetwork(
      accessNetwork: map['accessNetwork'] == null ? null : (map['accessNetwork']! as bool).input(),
      fixedIpV4: map['fixedIpV4'] == null ? null : (map['fixedIpV4']! as String).input(),
      fixedIpV6: map['fixedIpV6'] == null ? null : (map['fixedIpV6']! as String).input(),
      mac: map['mac'] == null ? null : (map['mac']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
    );
  }
}

