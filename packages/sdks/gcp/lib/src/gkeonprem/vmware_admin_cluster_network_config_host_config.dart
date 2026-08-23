// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VmwareAdminClusterNetworkConfigHostConfig {
  /// DNS search domains.
  final pulumi.Input<List<String>>? dnsSearchDomains;
  /// DNS servers.
  final pulumi.Input<List<String>>? dnsServers;
  /// NTP servers.
  final pulumi.Input<List<String>>? ntpServers;

  /// Creates a new [VmwareAdminClusterNetworkConfigHostConfig].
  /// [dnsSearchDomains] DNS search domains.
  /// [dnsServers] DNS servers.
  /// [ntpServers] NTP servers.
  const VmwareAdminClusterNetworkConfigHostConfig({
    this.dnsSearchDomains,
    this.dnsServers,
    this.ntpServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSearchDomains': ?dnsSearchDomains,
      'dnsServers': ?dnsServers,
      'ntpServers': ?ntpServers,
    };
  }

  factory VmwareAdminClusterNetworkConfigHostConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterNetworkConfigHostConfig(
      dnsSearchDomains: (() { final guardedValue = map['dnsSearchDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ntpServers: (() { final guardedValue = map['ntpServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
