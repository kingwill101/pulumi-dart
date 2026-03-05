// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config.dart';
import 'policy_dns64_config.dart';
import 'policy_network.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// Sets an alternative name server for the associated networks.
  /// When specified, all DNS queries are forwarded to a name server that you choose.
  /// Names such as .internal are not available when an alternative name server is specified.
  /// Structure is documented below.
  final pulumi.Input<PolicyAlternativeNameServerConfig>? alternativeNameServerConfig;
  /// A textual description field. Defaults to 'Managed by Pulumi'.
  final pulumi.Input<String>? description;
  /// Configurations related to DNS64 for this Policy.
  /// Structure is documented below.
  final pulumi.Input<PolicyDns64Config>? dns64Config;
  /// Allows networks bound to this policy to receive DNS queries sent
  /// by VMs or applications over VPN connections. When enabled, a
  /// virtual IP address will be allocated from each of the sub-networks
  /// that are bound to this policy.
  final pulumi.Input<bool>? enableInboundForwarding;
  /// Controls whether logging is enabled for the networks bound to this policy.
  /// Defaults to no logging if not set.
  final pulumi.Input<bool>? enableLogging;
  /// User assigned name for this policy.
  final pulumi.Input<String>? name;
  /// List of network names specifying networks to which this policy is applied.
  /// Structure is documented below.
  final pulumi.Input<List<PolicyNetwork>>? networks;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [PolicyState].
  /// [alternativeNameServerConfig] Sets an alternative name server for the associated networks.
  /// [description] A textual description field. Defaults to 'Managed by Pulumi'.
  /// [dns64Config] Configurations related to DNS64 for this Policy.
  /// [enableInboundForwarding] Allows networks bound to this policy to receive DNS queries sent
  /// [enableLogging] Controls whether logging is enabled for the networks bound to this policy.
  /// [name] User assigned name for this policy.
  /// [networks] List of network names specifying networks to which this policy is applied.
  /// [project] The ID of the project in which the resource belongs.
  PolicyState({
    this.alternativeNameServerConfig,
    this.description,
    this.dns64Config,
    this.enableInboundForwarding,
    this.enableLogging,
    this.name,
    this.networks,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternativeNameServerConfig': ?pulumi.Input.mapOptionalInputValue<PolicyAlternativeNameServerConfig, Map<String, dynamic>>(alternativeNameServerConfig, (value) => value.toMap()),
      'description': ?description,
      'dns64Config': ?pulumi.Input.mapOptionalInputValue<PolicyDns64Config, Map<String, dynamic>>(dns64Config, (value) => value.toMap()),
      'enableInboundForwarding': ?enableInboundForwarding,
      'enableLogging': ?enableLogging,
      'name': ?name,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<PolicyNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<PolicyNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      alternativeNameServerConfig: (() { final guardedValue = map['alternativeNameServerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyAlternativeNameServerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dns64Config: (() { final guardedValue = map['dns64Config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyDns64Config.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableInboundForwarding: (() { final guardedValue = map['enableInboundForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableLogging: (() { final guardedValue = map['enableLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyNetwork>(guardedValue, (value) => PolicyNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

