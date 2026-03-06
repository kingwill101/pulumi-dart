// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_private_link_configuration_ip_configuration.dart';

class ApplicationGatewayPrivateLinkConfiguration {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// One or more `ip_configuration` blocks as defined below.
  ///
  /// &gt; **Note:** The `AllowApplicationGatewayPrivateLink` feature must be registered on the subscription before enabling private link
  ///
  /// ```bash
  /// az feature register --name AllowApplicationGatewayPrivateLink --namespace Microsoft.Network
  /// ```
  final pulumi.Input<List<ApplicationGatewayPrivateLinkConfigurationIpConfiguration>> ipConfigurations;
  /// The name of the private link configuration.
  final pulumi.Input<String> name;

  /// Creates a new [ApplicationGatewayPrivateLinkConfiguration].
  /// [id] The ID of the Rewrite Rule Set
  /// [ipConfigurations] One or more `ip_configuration` blocks as defined below.
  /// [name] The name of the private link configuration.
  const ApplicationGatewayPrivateLinkConfiguration({
    this.id,
    required this.ipConfigurations,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ipConfigurations': pulumi.Input.mapInputValue<List<ApplicationGatewayPrivateLinkConfigurationIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayPrivateLinkConfigurationIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory ApplicationGatewayPrivateLinkConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPrivateLinkConfiguration(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayPrivateLinkConfigurationIpConfiguration>(map['ipConfigurations']!, (value) => ApplicationGatewayPrivateLinkConfigurationIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

