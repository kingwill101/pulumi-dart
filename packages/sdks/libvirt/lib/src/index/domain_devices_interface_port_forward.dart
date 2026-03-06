// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_port_forward_range.dart';

class DomainDevicesInterfacePortForward {
  /// Specifies the address to which packets are forwarded.
  final pulumi.Input<String>? address;
  /// Sets the device associated with the port forwarding configuration.
  final pulumi.Input<String>? dev;
  /// Configures the protocol used for port forwarding (e.g., TCP or UDP).
  final pulumi.Input<String> proto;
  /// Defines the range of ports to be forwarded.
  final pulumi.Input<List<DomainDevicesInterfacePortForwardRange>>? ranges;

  /// Creates a new [DomainDevicesInterfacePortForward].
  /// [address] Specifies the address to which packets are forwarded.
  /// [dev] Sets the device associated with the port forwarding configuration.
  /// [proto] Configures the protocol used for port forwarding (e.g., TCP or UDP).
  /// [ranges] Defines the range of ports to be forwarded.
  const DomainDevicesInterfacePortForward({
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
      'ranges': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesInterfacePortForwardRange>, List<Map<String, dynamic>>>(ranges, (value) => pulumi.Input.encodeList<DomainDevicesInterfacePortForwardRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesInterfacePortForward.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfacePortForward(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proto: pulumi.Input.fromValue(map['proto'] as String),
      ranges: (() { final guardedValue = map['ranges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesInterfacePortForwardRange>(guardedValue, (value) => DomainDevicesInterfacePortForwardRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

