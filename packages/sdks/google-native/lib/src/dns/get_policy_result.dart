// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config_response.dart';
import 'policy_network_response.dart';

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  final PolicyAlternativeNameServerConfigResponse alternativeNameServerConfig;
  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the policy's function.
  final String description;
  /// Allows networks bound to this policy to receive DNS queries sent by VMs or applications over VPN connections. When enabled, a virtual IP address is allocated from each of the subnetworks that are bound to this policy.
  final bool enableInboundForwarding;
  /// Controls whether logging is enabled for the networks bound to this policy. Defaults to no logging if not set.
  final bool enableLogging;
  final String kind;
  /// User-assigned name for this policy.
  final String name;
  /// List of network names specifying networks to which this policy is applied.
  final List<PolicyNetworkResponse> networks;

  /// Creates a new [GetPolicyResult].
  /// [alternativeNameServerConfig] Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  /// [description] A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the policy's function.
  /// [enableInboundForwarding] Allows networks bound to this policy to receive DNS queries sent by VMs or applications over VPN connections. When enabled, a virtual IP address is allocated from each of the subnetworks that are bound to this policy.
  /// [enableLogging] Controls whether logging is enabled for the networks bound to this policy. Defaults to no logging if not set.
  /// [kind] Required.
  /// [name] User-assigned name for this policy.
  /// [networks] List of network names specifying networks to which this policy is applied.
  GetPolicyResult({
    required this.alternativeNameServerConfig,
    required this.description,
    required this.enableInboundForwarding,
    required this.enableLogging,
    required this.kind,
    required this.name,
    required this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternativeNameServerConfig': alternativeNameServerConfig.toMap(),
      'description': description,
      'enableInboundForwarding': enableInboundForwarding,
      'enableLogging': enableLogging,
      'kind': kind,
      'name': name,
      'networks': pulumi.Input.encodeList<PolicyNetworkResponse, Map<String, dynamic>>(networks, (value) => value.toMap()),
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      alternativeNameServerConfig: PolicyAlternativeNameServerConfigResponse.fromMap((map['alternativeNameServerConfig']! as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      enableInboundForwarding: map['enableInboundForwarding'] as bool,
      enableLogging: map['enableLogging'] as bool,
      kind: map['kind'] as String,
      name: map['name'] as String,
      networks: pulumi.Input.decodeList<PolicyNetworkResponse>(map['networks']!, (value) => PolicyNetworkResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

