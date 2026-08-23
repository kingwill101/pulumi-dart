// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interactive_query_cluster_private_link_configuration_ip_configuration.dart';

class InteractiveQueryClusterPrivateLinkConfiguration {
  /// The ID of the private link service group.
  final pulumi.Input<String> groupId;
  /// An `ipConfiguration` block as defined below.
  final pulumi.Input<InteractiveQueryClusterPrivateLinkConfigurationIpConfiguration> ipConfiguration;
  /// The name of the private link configuration.
  final pulumi.Input<String> name;

  /// Creates a new [InteractiveQueryClusterPrivateLinkConfiguration].
  /// [groupId] The ID of the private link service group.
  /// [ipConfiguration] An `ipConfiguration` block as defined below.
  /// [name] The name of the private link configuration.
  const InteractiveQueryClusterPrivateLinkConfiguration({
    required this.groupId,
    required this.ipConfiguration,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'ipConfiguration': pulumi.Input.mapInputValue<InteractiveQueryClusterPrivateLinkConfigurationIpConfiguration, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'name': name,
    };
  }

  factory InteractiveQueryClusterPrivateLinkConfiguration.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterPrivateLinkConfiguration(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      ipConfiguration: pulumi.Input.fromValue(InteractiveQueryClusterPrivateLinkConfigurationIpConfiguration.fromMap((map['ipConfiguration']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
