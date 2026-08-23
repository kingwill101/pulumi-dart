// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_cluster_private_link_configuration_ip_configuration.dart';

class KafkaClusterPrivateLinkConfiguration {
  /// The ID of the private link service group.
  final pulumi.Input<String> groupId;
  /// An `ipConfiguration` block as defined below.
  final pulumi.Input<KafkaClusterPrivateLinkConfigurationIpConfiguration> ipConfiguration;
  /// The name of the private link configuration.
  final pulumi.Input<String> name;

  /// Creates a new [KafkaClusterPrivateLinkConfiguration].
  /// [groupId] The ID of the private link service group.
  /// [ipConfiguration] An `ipConfiguration` block as defined below.
  /// [name] The name of the private link configuration.
  const KafkaClusterPrivateLinkConfiguration({
    required this.groupId,
    required this.ipConfiguration,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'ipConfiguration': pulumi.Input.mapInputValue<KafkaClusterPrivateLinkConfigurationIpConfiguration, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'name': name,
    };
  }

  factory KafkaClusterPrivateLinkConfiguration.fromMap(Map<String, dynamic> map) {
    return KafkaClusterPrivateLinkConfiguration(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      ipConfiguration: pulumi.Input.fromValue(KafkaClusterPrivateLinkConfigurationIpConfiguration.fromMap((map['ipConfiguration']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
