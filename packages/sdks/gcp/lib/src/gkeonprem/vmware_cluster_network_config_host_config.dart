// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterNetworkConfigHostConfig {
  /// DNS search domains.
  ///
  /// &lt;a name="nested_network_config_control_plane_v2_config"&gt;&lt;/a&gt;The `control_plane_v2_config` block supports:
  final pulumi.Input<List<String>>? dnsSearchDomains;
  /// DNS servers.
  final pulumi.Input<List<String>>? dnsServers;
  /// NTP servers.
  final pulumi.Input<List<String>>? ntpServers;

  /// Creates a new [VMwareClusterNetworkConfigHostConfig].
  /// [dnsSearchDomains] DNS search domains.
  /// [dnsServers] DNS servers.
  /// [ntpServers] NTP servers.
  VMwareClusterNetworkConfigHostConfig({
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

  factory VMwareClusterNetworkConfigHostConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterNetworkConfigHostConfig(
      dnsSearchDomains: (() { final guardedValue = map['dnsSearchDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ntpServers: (() { final guardedValue = map['ntpServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

