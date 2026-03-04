// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the common parameters for all the hosts irrespective of their IP address.
class VmwareHostConfigResponse {
  /// DNS search domains.
  final pulumi.Input<List<String>> dnsSearchDomains;

  /// DNS servers.
  final pulumi.Input<List<String>> dnsServers;

  /// NTP servers.
  final pulumi.Input<List<String>> ntpServers;

  /// Creates a new [VmwareHostConfigResponse].
  /// [dnsSearchDomains] DNS search domains.
  /// [dnsServers] DNS servers.
  /// [ntpServers] NTP servers.
  VmwareHostConfigResponse({
    required this.dnsSearchDomains,
    required this.dnsServers,
    required this.ntpServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSearchDomains': dnsSearchDomains,
      'dnsServers': dnsServers,
      'ntpServers': ntpServers,
    };
  }

  factory VmwareHostConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareHostConfigResponse(
      dnsSearchDomains: pulumi.Input.fromValue(
        (map['dnsSearchDomains'] as List).cast<String>(),
      ),
      dnsServers: pulumi.Input.fromValue(
        (map['dnsServers'] as List).cast<String>(),
      ),
      ntpServers: pulumi.Input.fromValue(
        (map['ntpServers'] as List).cast<String>(),
      ),
    );
  }
}
