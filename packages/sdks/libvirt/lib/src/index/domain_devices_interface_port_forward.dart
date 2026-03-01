// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_port_forward_range.dart';

class DomainDevicesInterfacePortForward {
  /// Specifies the address to which packets are forwarded.
  final String? address;
  /// Sets the device associated with the port forwarding configuration.
  final String? dev;
  /// Configures the protocol used for port forwarding (e.g., TCP or UDP).
  final String proto;
  /// Defines the range of ports to be forwarded.
  final List<DomainDevicesInterfacePortForwardRange>? ranges;

  /// Creates a new [DomainDevicesInterfacePortForward].
  /// [address] Specifies the address to which packets are forwarded.
  /// [dev] Sets the device associated with the port forwarding configuration.
  /// [proto] Configures the protocol used for port forwarding (e.g., TCP or UDP).
  /// [ranges] Defines the range of ports to be forwarded.
  DomainDevicesInterfacePortForward({
    this.address,
    this.dev,
    required this.proto,
    this.ranges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'dev': ?dev,
      'proto': proto,
      'ranges': ?ranges == null ? null : pulumi.Input.encodeList<DomainDevicesInterfacePortForwardRange, Map<String, dynamic>>(ranges!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfacePortForward.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfacePortForward(
      address: map['address'] == null ? null : map['address'] as String,
      dev: map['dev'] == null ? null : map['dev'] as String,
      proto: map['proto'] as String,
      ranges: map['ranges'] == null ? null : pulumi.Input.decodeList<DomainDevicesInterfacePortForwardRange>(map['ranges'], (value) => DomainDevicesInterfacePortForwardRange.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

