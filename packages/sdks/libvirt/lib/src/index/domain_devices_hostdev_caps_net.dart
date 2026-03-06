// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_caps_net_ip.dart';
import 'domain_devices_hostdev_caps_net_route.dart';
import 'domain_devices_hostdev_caps_net_source.dart';

class DomainDevicesHostdevCapsNet {
  /// Configures the IP attributes for the host device's network capabilities, including address settings.
  final pulumi.Input<List<DomainDevicesHostdevCapsNetIp>>? ips;
  /// Outlines the routing capabilities associated with the host device's network configuration.
  final pulumi.Input<List<DomainDevicesHostdevCapsNetRoute>>? routes;
  /// Indicates the source parameters related to the host device's network capabilities.
  final pulumi.Input<DomainDevicesHostdevCapsNetSource>? source;

  /// Creates a new [DomainDevicesHostdevCapsNet].
  /// [ips] Configures the IP attributes for the host device's network capabilities, including address settings.
  /// [routes] Outlines the routing capabilities associated with the host device's network configuration.
  /// [source] Indicates the source parameters related to the host device's network capabilities.
  const DomainDevicesHostdevCapsNet({
    this.ips,
    this.routes,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ips': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesHostdevCapsNetIp>, List<Map<String, dynamic>>>(ips, (value) => pulumi.Input.encodeList<DomainDevicesHostdevCapsNetIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routes': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesHostdevCapsNetRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<DomainDevicesHostdevCapsNetRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesHostdevCapsNetSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesHostdevCapsNet.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevCapsNet(
      ips: (() { final guardedValue = map['ips']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesHostdevCapsNetIp>(guardedValue, (value) => DomainDevicesHostdevCapsNetIp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesHostdevCapsNetRoute>(guardedValue, (value) => DomainDevicesHostdevCapsNetRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesHostdevCapsNetSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

