// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hbase_cluster_private_link_configuration_ip_configuration.dart';

class HBaseClusterPrivateLinkConfiguration {
  /// The ID of the private link service group.
  final pulumi.Input<String> groupId;
  /// An `ip_configuration` block as defined below.
  final pulumi.Input<HBaseClusterPrivateLinkConfigurationIpConfiguration> ipConfiguration;
  /// The name of the private link configuration.
  final pulumi.Input<String> name;

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
      'ipConfiguration': pulumi.Input.mapInputValue<HBaseClusterPrivateLinkConfigurationIpConfiguration, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'name': name,
    };
  }

  factory HBaseClusterPrivateLinkConfiguration.fromMap(Map<String, dynamic> map) {
    return HBaseClusterPrivateLinkConfiguration(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      ipConfiguration: pulumi.Input.fromValue(HBaseClusterPrivateLinkConfigurationIpConfiguration.fromMap((map['ipConfiguration']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

