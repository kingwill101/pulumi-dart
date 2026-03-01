// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config.dart';
import 'policy_network.dart';

/// {@template pulumi_dns_v1_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_policy_args_doc}
class PolicyArgs {
  /// Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  final pulumi.Input<PolicyAlternativeNameServerConfig>? alternativeNameServerConfig;
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;
  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the policy's function.
  final pulumi.Input<String>? description;
  /// Allows networks bound to this policy to receive DNS queries sent by VMs or applications over VPN connections. When enabled, a virtual IP address is allocated from each of the subnetworks that are bound to this policy.
  final pulumi.Input<bool>? enableInboundForwarding;
  /// Controls whether logging is enabled for the networks bound to this policy. Defaults to no logging if not set.
  final pulumi.Input<bool>? enableLogging;
  final pulumi.Input<String>? kind;
  /// User-assigned name for this policy.
  final pulumi.Input<String>? name;
  /// List of network names specifying networks to which this policy is applied.
  final pulumi.Input<List<PolicyNetwork>>? networks;
  final pulumi.Input<String>? project;

  /// Creates a new [PolicyArgs].
  /// [alternativeNameServerConfig] Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  /// [clientOperationId] For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  /// [description] A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the policy's function.
  /// [enableInboundForwarding] Allows networks bound to this policy to receive DNS queries sent by VMs or applications over VPN connections. When enabled, a virtual IP address is allocated from each of the subnetworks that are bound to this policy.
  /// [enableLogging] Controls whether logging is enabled for the networks bound to this policy. Defaults to no logging if not set.
  /// [kind] Optional.
  /// [name] User-assigned name for this policy.
  /// [networks] List of network names specifying networks to which this policy is applied.
  /// [project] Optional.
  PolicyArgs({
    pulumi.Output<PolicyAlternativeNameServerConfig>? alternativeNameServerConfig,
    pulumi.Output<String>? clientOperationId,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableInboundForwarding,
    pulumi.Output<bool>? enableLogging,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? name,
    pulumi.Output<List<PolicyNetwork>>? networks,
    pulumi.Output<String>? project,
  }) :
      alternativeNameServerConfig = pulumi.Input.asOptionalInput<PolicyAlternativeNameServerConfig>(alternativeNameServerConfig),
      clientOperationId = pulumi.Input.asOptionalInput<String>(clientOperationId),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableInboundForwarding = pulumi.Input.asOptionalInput<bool>(enableInboundForwarding),
      enableLogging = pulumi.Input.asOptionalInput<bool>(enableLogging),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asOptionalInput<String>(name),
      networks = pulumi.Input.asOptionalInput<List<PolicyNetwork>>(networks),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternativeNameServerConfig': ?pulumi.Input.mapOptionalInputValue<PolicyAlternativeNameServerConfig, Map<String, dynamic>>(alternativeNameServerConfig, (value) => value.toMap()),
      'clientOperationId': ?clientOperationId,
      'description': ?description,
      'enableInboundForwarding': ?enableInboundForwarding,
      'enableLogging': ?enableLogging,
      'kind': ?kind,
      'name': ?name,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<PolicyNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<PolicyNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      alternativeNameServerConfig: map['alternativeNameServerConfig'] == null ? null : pulumi.Output.create<PolicyAlternativeNameServerConfig>(PolicyAlternativeNameServerConfig.fromMap((map['alternativeNameServerConfig'] as Map).cast<String, dynamic>())),
      clientOperationId: map['clientOperationId'] == null ? null : pulumi.Output.create<String>(map['clientOperationId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableInboundForwarding: map['enableInboundForwarding'] == null ? null : pulumi.Output.create<bool>(map['enableInboundForwarding'] as bool),
      enableLogging: map['enableLogging'] == null ? null : pulumi.Output.create<bool>(map['enableLogging'] as bool),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networks: map['networks'] == null ? null : pulumi.Output.create<List<PolicyNetwork>>(pulumi.Input.decodeList<PolicyNetwork>(map['networks'], (value) => PolicyNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

