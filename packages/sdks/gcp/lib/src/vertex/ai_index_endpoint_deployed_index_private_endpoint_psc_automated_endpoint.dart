// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint {
  /// (Output)
  /// ip Address created by the automated forwarding rule.
  final pulumi.Input<String?>? matchAddress;
  /// (Output)
  /// Corresponding network in pscAutomationConfigs.
  final pulumi.Input<String?>? network;
  /// (Output)
  /// Corresponding projectId in pscAutomationConfigs
  final pulumi.Input<String?>? projectId;

  /// Creates a new [AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint].
  /// [matchAddress] (Output)
  /// [network] (Output)
  /// [projectId] (Output)
  const AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint({
    this.matchAddress,
    this.network,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchAddress': ?matchAddress,
      'network': ?network,
      'projectId': ?projectId,
    };
  }

  factory AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint(
      matchAddress: (() { final guardedValue = map['matchAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
