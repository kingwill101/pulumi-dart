// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentGatewayAgentGatewayCard {
  /// (Output)
  /// mTLS Endpoint associated with this AgentGateway.
  final pulumi.Input<String?>? mtlsEndpoint;
  /// (Output)
  /// Root Certificates for Agents to validate this AgentGateway.
  final pulumi.Input<List<String>?>? rootCertificates;
  /// (Output)
  /// Service Account used by Service Extensions to operate.
  final pulumi.Input<String?>? serviceExtensionsServiceAccount;

  /// Creates a new [AgentGatewayAgentGatewayCard].
  /// [mtlsEndpoint] (Output)
  /// [rootCertificates] (Output)
  /// [serviceExtensionsServiceAccount] (Output)
  const AgentGatewayAgentGatewayCard({
    this.mtlsEndpoint,
    this.rootCertificates,
    this.serviceExtensionsServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mtlsEndpoint': ?mtlsEndpoint,
      'rootCertificates': ?rootCertificates,
      'serviceExtensionsServiceAccount': ?serviceExtensionsServiceAccount,
    };
  }

  factory AgentGatewayAgentGatewayCard.fromMap(Map<String, dynamic> map) {
    return AgentGatewayAgentGatewayCard(
      mtlsEndpoint: (() { final guardedValue = map['mtlsEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootCertificates: (() { final guardedValue = map['rootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceExtensionsServiceAccount: (() { final guardedValue = map['serviceExtensionsServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
