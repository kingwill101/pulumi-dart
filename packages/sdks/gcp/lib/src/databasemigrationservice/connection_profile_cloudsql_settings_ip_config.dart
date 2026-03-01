// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_cloudsql_settings_ip_config_authorized_network.dart';

class ConnectionProfileCloudsqlSettingsIpConfig {
  /// The list of external networks that are allowed to connect to the instance using the IP.
  /// Structure is documented below.
  final List<ConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetwork>? authorizedNetworks;
  /// Whether the instance should be assigned an IPv4 address or not.
  final bool? enableIpv4;
  /// The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, projects/myProject/global/networks/default.
  /// This setting can be updated, but it cannot be removed after it is set.
  final String? privateNetwork;
  /// Whether SSL connections over IP should be enforced or not.
  final bool? requireSsl;

  /// Creates a new [ConnectionProfileCloudsqlSettingsIpConfig].
  /// [authorizedNetworks] The list of external networks that are allowed to connect to the instance using the IP.
  /// [enableIpv4] Whether the instance should be assigned an IPv4 address or not.
  /// [privateNetwork] The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, projects/myProject/global/networks/default.
  /// [requireSsl] Whether SSL connections over IP should be enforced or not.
  ConnectionProfileCloudsqlSettingsIpConfig({
    this.authorizedNetworks,
    this.enableIpv4,
    this.privateNetwork,
    this.requireSsl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedNetworks': ?authorizedNetworks == null ? null : pulumi.Input.encodeList<ConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetwork, Map<String, dynamic>>(authorizedNetworks!, (value) => value.toMap()),
      'enableIpv4': ?enableIpv4,
      'privateNetwork': ?privateNetwork,
      'requireSsl': ?requireSsl,
    };
  }

  factory ConnectionProfileCloudsqlSettingsIpConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileCloudsqlSettingsIpConfig(
      authorizedNetworks: map['authorizedNetworks'] == null ? null : pulumi.Input.decodeList<ConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetwork>(map['authorizedNetworks'], (value) => ConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetwork.fromMap((value as Map).cast<String, dynamic>())),
      enableIpv4: map['enableIpv4'] == null ? null : map['enableIpv4'] as bool,
      privateNetwork: map['privateNetwork'] == null ? null : map['privateNetwork'] as String,
      requireSsl: map['requireSsl'] == null ? null : map['requireSsl'] as bool,
    );
  }
}

