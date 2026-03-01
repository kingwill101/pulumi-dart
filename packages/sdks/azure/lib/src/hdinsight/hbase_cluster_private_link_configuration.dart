// ignore_for_file: unused_element, unnecessary_cast

import 'hbase_cluster_private_link_configuration_ip_configuration.dart';

class HBaseClusterPrivateLinkConfiguration {
  /// The ID of the private link service group.
  final String groupId;
  /// An `ip_configuration` block as defined below.
  final HBaseClusterPrivateLinkConfigurationIpConfiguration ipConfiguration;
  /// The name of the private link configuration.
  final String name;

  /// Creates a new [HBaseClusterPrivateLinkConfiguration].
  /// [groupId] The ID of the private link service group.
  /// [ipConfiguration] An `ip_configuration` block as defined below.
  /// [name] The name of the private link configuration.
  HBaseClusterPrivateLinkConfiguration({
    required this.groupId,
    required this.ipConfiguration,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'ipConfiguration': ipConfiguration.toMap(),
      'name': name,
    };
  }

  factory HBaseClusterPrivateLinkConfiguration.fromMap(Map<String, dynamic> map) {
    return HBaseClusterPrivateLinkConfiguration(
      groupId: map['groupId'] as String,
      ipConfiguration: HBaseClusterPrivateLinkConfigurationIpConfiguration.fromMap((map['ipConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

