// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2VmNetworkConfig {
  /// Allows the TPU node to send and receive packets with non-matching destination or source
  /// IPs. This is required if you plan to use the TPU workers to forward routes.
  final pulumi.Input<bool>? canIpForward;

  /// Indicates that external IP addresses would be associated with the TPU workers. If set to
  /// false, the specified subnetwork or network should have Private Google Access enabled.
  final pulumi.Input<bool>? enableExternalIps;

  /// The name of the network for the TPU node. It must be a preexisting Google Compute Engine
  /// network. If none is provided, "default" will be used.
  final pulumi.Input<String>? network;

  /// Specifies networking queue count for TPU VM instance's network interface.
  final pulumi.Input<int>? queueCount;

  /// The name of the subnetwork for the TPU node. It must be a preexisting Google Compute
  /// Engine subnetwork. If none is provided, "default" will be used.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [V2VmNetworkConfig].
  /// [canIpForward] Allows the TPU node to send and receive packets with non-matching destination or source
  /// [enableExternalIps] Indicates that external IP addresses would be associated with the TPU workers. If set to
  /// [network] The name of the network for the TPU node. It must be a preexisting Google Compute Engine
  /// [queueCount] Specifies networking queue count for TPU VM instance's network interface.
  /// [subnetwork] The name of the subnetwork for the TPU node. It must be a preexisting Google Compute
  V2VmNetworkConfig({
    this.canIpForward,
    this.enableExternalIps,
    this.network,
    this.queueCount,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canIpForward': ?canIpForward,
      'enableExternalIps': ?enableExternalIps,
      'network': ?network,
      'queueCount': ?queueCount,
      'subnetwork': ?subnetwork,
    };
  }

  factory V2VmNetworkConfig.fromMap(Map<String, dynamic> map) {
    return V2VmNetworkConfig(
      canIpForward: (() {
        final guardedValue = map['canIpForward'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableExternalIps: (() {
        final guardedValue = map['enableExternalIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queueCount: (() {
        final guardedValue = map['queueCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      subnetwork: (() {
        final guardedValue = map['subnetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
