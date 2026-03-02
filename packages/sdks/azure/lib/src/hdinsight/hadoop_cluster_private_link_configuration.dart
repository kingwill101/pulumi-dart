// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hadoop_cluster_private_link_configuration_ip_configuration.dart';

class HadoopClusterPrivateLinkConfiguration {
  /// The ID of the private link service group.
  final pulumi.Input<String> groupId;
  /// An `ip_configuration` block as defined below.
  final pulumi.Input<HadoopClusterPrivateLinkConfigurationIpConfiguration> ipConfiguration;
  /// The name of the private link configuration.
  final pulumi.Input<String> name;

  /// Creates a new [HadoopClusterPrivateLinkConfiguration].
  /// [groupId] The ID of the private link service group.
  /// [ipConfiguration] An `ip_configuration` block as defined below.
  /// [name] The name of the private link configuration.
  HadoopClusterPrivateLinkConfiguration({
    required this.groupId,
    required this.ipConfiguration,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'ipConfiguration': pulumi.Input.mapInputValue<HadoopClusterPrivateLinkConfigurationIpConfiguration, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'name': name,
    };
  }

  factory HadoopClusterPrivateLinkConfiguration.fromMap(Map<String, dynamic> map) {
    return HadoopClusterPrivateLinkConfiguration(
      groupId: (map['groupId'] as String).input(),
      ipConfiguration: (HadoopClusterPrivateLinkConfigurationIpConfiguration.fromMap((map['ipConfiguration'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}

